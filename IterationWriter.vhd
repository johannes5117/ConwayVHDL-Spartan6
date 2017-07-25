-- Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;

--IterationWriter: If one iteration is calculated it has to be written to the graphics card. This module is responsible for that.

entity IterationWriter is
    Port ( clk : in  STD_LOGIC;
           engine_write_finished : out  STD_LOGIC;
           engine_read_start : in  STD_LOGIC;
			  engine_iteration_in_progress : in STD_LOGIC;
           ram_data_in : in  STD_LOGIC;
           framebuffer_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           ram_addr: out STD_LOGIC_VECTOR (31 downto 0);
           framebuffer_addr_x : out  STD_LOGIC_VECTOR (11 downto 0);
           framebuffer_addr_y : out  STD_LOGIC_VECTOR (11 downto 0);
			  framebuffer_take_data : out STD_LOGIC;
           framebuffer_writeable : in  STD_LOGIC);
end IterationWriter;

architecture Behavioral of IterationWriter is
--Count variables 
SIGNAL HPOS: INTEGER RANGE 0 TO 80:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 64:=0;
-- the conway data get their color. Active field blue, inactive field red, border white
signal value_out_signal : STD_LOGIC_VECTOR (7 downto 0);
-- pixel x,y in the framebuffer
signal signal_framebuffer_x :STD_LOGIC_VECTOR(11 downto 0);
signal signal_framebuffer_y :STD_LOGIC_VECTOR(11 downto 0);
-- signal for the framebuffer to store the data 
signal signal_take_data : STD_LOGIC:='0';
-- address of conway ram value currently writing to framebuffer
signal signal_ram_address: STD_LOGIC_VECTOR(31 downto 0);
-- boolean thats true if the iteration writer is currently running
signal activeRound: STD_LOGIC:='0';
-- signalize the ConwayAutomaton that the actual iteration is in the framebuffer
signal signal_engine_write_finished: STD_LOGIC:='0';

-- states for the state machine
type state_type is (incrementpixelpos , computepixel, getpixel, waitpixel, writepixel);
signal state : state_type := incrementpixelpos;

begin

PROCESS(clk)
BEGIN
if(rising_edge(clk)) then
	-- wait for ConwayAutomaton to start iteration process
	if(engine_read_start = '1') then
		activeRound <= '1';
		signal_engine_write_finished <= '0';
	end if;
	-- framebuffer must be writeable
	if(framebuffer_writeable = '1' and engine_iteration_in_progress = '1') then
		if state = incrementpixelpos and activeRound = '1' then
			--initialize take data with 0
			signal_take_data <= '0';
			-- increment HPOS and VPOS and change state
			if(HPOS<79) then
				HPOS<=HPOS+1;
				state <= getpixel;
			else
				HPOS<=0;
				IF(VPOS<63) then
					VPOS<=VPOS+1;
					state <= getpixel;
					else
						activeRound <= '0';
						signal_engine_write_finished <= '1';
						state <= incrementpixelpos;
						VPOS<=0; 
					end if;
				end if;
			elsif state = computepixel then
				-- if the current pixel position is on the border write "11111111" (white) to the framebuffer, else either red or blue for not living or living
				if(HPOS = 0 or HPOS = 79 or VPOS = 0 or VPOS = 63) then 
					if(HPOS = 79) then
						value_out_signal<="11111111";
               elsif(HPOS = 0) then
                  value_out_signal<="11111111";
               elsif(VPOS =0) then
                  value_out_signal<="11111111";
               elsif(VPOS =63) then
                  value_out_signal<="11111111";
               end if;
				else
					if(ram_data_in = '1') then
						value_out_signal<="00100100";
					else
						value_out_signal<="10000001";
					end if;
				end if;
			state <= writepixel;
		elsif state = getpixel then
			-- write the addresses to the busses 
			signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
			signal_framebuffer_x <= std_logic_vector(to_unsigned(HPOS, signal_framebuffer_x'length));
			signal_framebuffer_y <= std_logic_vector(to_unsigned(VPOS, signal_framebuffer_y'length));
			state <= waitpixel;
		elsif state = waitpixel then
			-- wait one cycle until the ConwayRam delivers the value for the current pixel
			state <= computepixel;
		else
			-- signalize the Framebuffer that the data can be read
			signal_take_data <= '1';
			state <= incrementpixelpos;
		end if;
	else 
		-- start from the first state over
		state <= incrementpixelpos;
	end if;
	framebuffer_take_data <= signal_take_data;
	framebuffer_addr_x <= signal_framebuffer_x;
	framebuffer_addr_y <= signal_framebuffer_y;
	framebuffer_data_out <= value_out_signal;
	ram_addr <= signal_ram_address;
	engine_write_finished <= signal_engine_write_finished;
end if;
END PROCESS;
end Behavioral;

