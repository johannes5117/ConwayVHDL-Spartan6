-- Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;

-- Conway Automaton: Calculates the iterations -> uses data from the ConwayRam

entity ConwayAutomaton is
    Port ( 	clk : in  STD_LOGIC;
				ram_data_out : out  STD_LOGIC;
				ram_data_in : in  STD_LOGIC;
				ram_addr: out STD_LOGIC_VECTOR(31 downto 0);
				ram_we: out STD_LOGIC;
				initModule_init : in STD_LOGIC;
				iterationWriter_start : out  STD_LOGIC;
				iterationWriter_finished : in  STD_LOGIC;
				iterationWriter_inProgress: out STD_LOGIC);
end ConwayAutomaton;

architecture Behavioral of ConwayAutomaton is

-- states for the main state machine
type state_type is (readram, compute , writeBuffer, waitTime);
signal state : state_type := readram;

-- states for the sub-state machines
type phase_readram_type is (readIt, computeIt, writeIt, getIt);
signal phase_readram : phase_readram_type := readIt;
type phase_compute_type is (incrementIt, computeIt, evaluateIt, writeIt, waitForIt);
signal phase_compute : phase_compute_type := incrementIt;
type phase_write_type is (startWrite, writeFinish);
signal phase_write : phase_write_type := startWrite;

-- Counting variables for the pixels 
signal HPOS: INTEGER RANGE -1 TO 80:=0;
signal VPOS: INTEGER RANGE 0 TO 64:=0;
-- Counting variables for the timer 
signal counter : INTEGER Range 0 to 1060000 :=0;
signal slicer_counter : INTEGER Range 0 to 1000:=0;
-- Buffer for the outgoing signals
signal signal_ram_address : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal signal_value_out : STD_LOGIC;
signal signal_ram_we: STD_LOGIC := '0';
signal signal_iterationWriter_start: STD_LOGIC := '0';
signal conwaybuffer : STD_LOGIC_VECTOR(5119 downto 0) := (others => '0');
signal signal_iterationWriter_inProgress : STD_LOGIC := '0';
-- save the 1 or 0 for the neighborhood -> std_logic can not be added up
type integer_array is array(7 downto 0) of integer;
signal computearray : integer_array; 
begin

PROCESS(clk)
BEGIN
if(rising_edge(clk) and initModule_init = '0') then
	-- reads the state of the pixels into the local buffer vector
	if(state = readram) then
		-- increment pixel counter
		if(phase_readram=readIt) then
			signal_ram_we <= '0';
			IF(HPOS<79) THEN
				HPOS<=HPOS+1;
				phase_readram<= computeIt;
			ELSE
				IF(VPOS<63)THEN
					HPOS<=0;
					VPOS<=VPOS+1;
					phase_readram<= computeIt;
				ELSE
					HPOS<=-1;
					VPOS<=1;
					state <= compute;
					phase_readram <= readIt;
					phase_compute <= incrementIt;
				END IF;
			END IF;
		-- set address to address bus
		elsif(phase_readram=computeIt) then
			signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
			phase_readram<= writeIt;
		-- wait until result is available
		elsif(phase_readram=writeIt) then
			phase_readram<= getIt;
		-- save result in local buffer vector
		elsif(phase_readram=getIt) then
			conwaybuffer(VPOS*80 + HPOS) <= ram_data_in;
			phase_readram<= readIt;
		end if;
	-- compute the iteration out of the buffer and write result directly to the ram
	elsif(state = compute) then
		-- increment pixel counter
		if(phase_compute = incrementIt) then
			IF(HPOS<78)THEN
				HPOS<=HPOS+1;
				phase_compute <= computeIt;
			ELSE
				HPOS<=0;
				IF(VPOS<62)THEN
					VPOS<=VPOS+1;
					phase_compute <= computeIt;
				ELSE
					VPOS<=0;
					state <= writeBuffer;
					phase_compute <= incrementIt;
				END IF;
			END IF;
		-- use neigbor array of integers to calculate conway rules
		elsif(phase_compute = computeIt) then
			if(conwaybuffer(VPOS*80+HPOS+81)='1') then
				computearray(0) <= 1;
			else
				computearray(0) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS+1)='1') then
				computearray(1) <= 1;
			else
				computearray(1) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS-1)='1') then
				computearray(2) <= 1;
			else
				computearray(2) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS-80)='1') then
				computearray(3) <= 1;
			else
				computearray(3) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS+80)='1') then
				computearray(4) <= 1;
			else
				computearray(4) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS+79)='1') then
				computearray(5) <= 1;
			else
				computearray(5) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS-79)='1') then
				computearray(6) <= 1;
			else
				computearray(6) <= 0;
			end if;
			if(conwaybuffer(VPOS*80+HPOS-81)='1') then
				computearray(7) <= 1;
			else
				computearray(7) <= 0;
			end if;
			phase_compute <= evaluateIt;
		-- use previous calculated integer to sum up and compare -> write result back to ConwayRam
		elsif(phase_compute = evaluateIt) then
			-- if position was dead in last iteration -> only exactly 3 neigbors would bring it to life
			if(conwaybuffer(VPOS*80+HPOS)='0') then
				if((computearray(0)+computearray(1)+computearray(2)+computearray(3)+computearray(4)+computearray(5)+computearray(6)+computearray(7))=3)then
					signal_value_out <= '1';
				else
					signal_value_out <= '0';
				end if;
			-- if position was alive in last iteration -> only exactly 3 or 2 neigbors would keep alife
			elsif(conwaybuffer(VPOS*80+HPOS)='1') then
				if((computearray(0)+computearray(1)+computearray(2)+computearray(3)+computearray(4)+computearray(5)+computearray(6)+computearray(7))=2 or (computearray(0)+computearray(1)+computearray(2)+computearray(3)+computearray(4)+computearray(5)+computearray(6)+computearray(7))=3)then
					signal_value_out <= '1';
				else
					signal_value_out <= '0';
				end if;
			end if;
			signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
			signal_ram_we <= '1';
			phase_compute <= waitForIt;
			
		elsif(phase_compute = writeIt) then
			phase_compute <= waitForIt;
		elsif(phase_compute = waitForIt) then
			phase_compute <= incrementIt;
		end if;
	elsif(state = writeBuffer) then
		if(phase_write = startWrite) then
			signal_ram_we <= '0';
			signal_iterationWriter_start <= '1';
			signal_iterationWriter_inProgress <= '1';
			phase_write <= writeFinish;
		elsif(phase_write = writeFinish) then
			if(iterationWriter_finished = '1') then 
				signal_iterationWriter_start <= '0';
				signal_iterationWriter_inProgress <= '0';
				state<=waitTime;
				phase_write<=startWrite;
			end if;
		end if;
	elsif(state = waitTime) then
		if(slicer_counter>=50) then
			state<=readram;
			slicer_counter <= 0;
		end if;
	end if;
	if(counter>=1059999) then
		counter <= 0;
		slicer_counter <= slicer_counter+1;
	else
		counter <= counter +1;
	end if;
end if;
iterationWriter_start <= signal_iterationWriter_start;
iterationWriter_inProgress <= signal_iterationWriter_inProgress;
ram_addr <= signal_ram_address;
ram_data_out <= signal_value_out;
ram_we <= signal_ram_we;
END PROCESS;


end Behavioral;

