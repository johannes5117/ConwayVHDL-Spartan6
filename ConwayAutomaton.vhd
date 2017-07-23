----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:10 07/14/2017 
-- Design Name: 
-- Module Name:    ConwayAutomaton - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ConwayAutomaton is
    Port ( 	clk : in  STD_LOGIC;
				ram_data_out : out  STD_LOGIC;
				ram_data_in : in  STD_LOGIC;
				ram_addr: out std_logic_vector(31 downto 0);
				ram_we: out STD_LOGIC;
				initModule_init : in STD_LOGIC;
				iterationWriter_start : out  STD_LOGIC;
				iterationWriter_finished : in  STD_LOGIC;
				iterationWriter_inProgress: out STD_LOGIC);
end ConwayAutomaton;

architecture Behavioral of ConwayAutomaton is
type state_type is (readram, compute , writeBuffer, waitTime);
signal state : state_type := readram;

type phase_readram_type is (readIt, computeIt, writeIt);
signal phase_readram : phase_readram_type := readIt;

type phase_compute_type is (incrementIt, computeIt, evaluateIt, writeIt, waitForIt);
signal phase_compute : phase_compute_type := incrementIt;

type phase_write_type is (startWrite, writeFinish);
signal phase_write : phase_write_type := startWrite;

SIGNAL HPOS: INTEGER RANGE 0 TO 80:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 64:=0;
signal signal_ram_address : std_logic_vector(31 downto 0) := (others => '0');
signal signal_value_out : std_logic;
signal signal_ram_we: std_logic := '0';
signal signal_iterationWriter_start: std_logic := '0';
signal conwaybuffer : std_logic_vector(5119 downto 0) := (others => '0');
signal signal_iterationWriter_inProgress : std_logic := '0';
type integer_array is array(7 downto 0) of integer;
signal computearray : integer_array; 
begin

PROCESS(clk)
BEGIN
	if(rising_edge(clk) and initModule_init = '0') then
			if(state = readram) then
				if(phase_readram=readIt) then
					signal_ram_we <= '0';
					IF(HPOS<79)THEN
						HPOS<=HPOS+1;
					ELSE
						IF(VPOS<63)THEN
							HPOS<=0;
							VPOS<=VPOS+1;
						ELSE
							HPOS<=0;
							VPOS<=1;
							state <= compute;
							phase_readram <= readIt;
							phase_compute <= incrementIt;
						END IF;
					END IF;
					phase_readram<= computeIt;
				elsif(phase_readram=computeIt) then
					signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
					phase_readram<= writeIt;
				elsif(phase_readram=writeIt) then
					conwaybuffer(VPOS*80 + HPOS) <= ram_data_in;
					phase_readram<= readIt;
				end if;
			elsif(state = compute) then
				if(phase_compute = incrementIt) then
					IF(HPOS<78)THEN
						HPOS<=HPOS+1;
					ELSE
						HPOS<=1;
						IF(VPOS<62)THEN
							VPOS<=VPOS+1;
						ELSE
							VPOS<=0;
							state <= writeBuffer;
							phase_compute <= incrementIt;
						END IF;
					END IF;
					phase_compute <= computeIt;
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
				elsif(phase_compute = evaluateIt) then
					if(HPOS = 50 and VPOS = 50) then
						signal_value_out <= '0';
					else
						signal_value_out <= '1';
					end if;
					
					--if((computearray(0)+computearray(1)+computearray(2)+computearray(3)+computearray(4)+computearray(5)+computearray(6)+computearray(7))=3)then
						--signal_value_out <= '1';
				---	else
					--	signal_value_out <= '0';
					--end if;
					--end if;
					
					signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
					----- HIER
					signal_ram_we <= '0';
					phase_compute <= writeIt;
				elsif(phase_compute = writeIt) then
					phase_compute <= waitForIt;
				elsif(phase_compute = waitForIt) then
									signal_ram_we <= '0';

					phase_compute <= incrementIt;
				end if;
			elsif(state = writeBuffer) then
				if(phase_write = startWrite) then
					signal_ram_we <= '0';
					signal_iterationWriter_start <= '1';
					signal_iterationWriter_inProgress <= '1';
					phase_write <= writeFinish;
				elsif(phase_write = writeFinish) then
										signal_iterationWriter_start <= '0';

					if(iterationWriter_finished = '1') then 
						signal_iterationWriter_inProgress <= '0';
						state<=waitTime;
						phase_write<=startWrite;
					end if;
				end if;
			elsif(state = waitTime) then
				state<=readram;
			end if;
	end if;
	iterationWriter_start <= signal_iterationWriter_start;
	iterationWriter_inProgress <= signal_iterationWriter_inProgress;
	ram_addr <= signal_ram_address;
	ram_data_out <= signal_value_out;
	ram_we <= signal_ram_we;
END PROCESS;


end Behavioral;

