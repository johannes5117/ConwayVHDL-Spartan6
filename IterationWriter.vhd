----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:57 07/14/2017 
-- Design Name: 
-- Module Name:    IterationWriter - Behavioral 
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

entity IterationWriter is
    Port ( clk : in  STD_LOGIC;
           engine_write_finished : out  STD_LOGIC;
           engine_read_start : in  STD_LOGIC;
           ram_data_in : in  STD_LOGIC;
           framebuffer_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           ram_addr: out std_logic_vector(31 downto 0);
           framebuffer_addr_x : out  STD_LOGIC_VECTOR (11 downto 0);
           framebuffer_addr_y : out  STD_LOGIC_VECTOR (11 downto 0);
			  framebuffer_take_data : out STD_LOGIC;
           framebuffer_writeable : in  STD_LOGIC);
end IterationWriter;

architecture Behavioral of IterationWriter is
SIGNAL HPOS: INTEGER RANGE 0 TO 80:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 64:=0;
signal value: STD_LOGIC_VECTOR(7 downto 0);
signal write_done: Std_logic:='0';
signal value_out_signal : std_logic_vector (7 downto 0);
signal divider : std_logic:='0';
signal signal_framebuffer_x :std_logic_vector(11 downto 0);
signal signal_framebuffer_y :std_logic_vector(11 downto 0);
signal signal_take_data : std_logic:='0';
signal signal_ram_address: std_logic_vector(31 downto 0);
signal activeRound: std_logic:='0';
type state_type is (getconwayram , computepixel, setpixel, writepixel);
signal state : state_type := getconwayram;

begin

PROCESS(clk)
BEGIN
	if(rising_edge(clk)) then
		if(engine_read_start = '1') then
			activeRound <= '1';
			engine_write_finished <= '0';
		end if;
		if(framebuffer_writeable = '1') then
			if state = getconwayram and activeRound = '1' then
				-- framebuffer takes data on rising edge of take_data
				signal_take_data <= '0';
				IF(HPOS<79)THEN
					HPOS<=HPOS+1;
					state <= setpixel;
				ELSE
					HPOS<=0;
					IF(VPOS<63)THEN
						VPOS<=VPOS+1;
						state <= setpixel;
					ELSE
						activeRound <= '0';
						engine_write_finished <= '1';
						state <= getconwayram;
						VPOS<=0; 
					END IF;
				END IF;
			elsif state = computepixel then
					if(HPOS = 0 or HPOS = 79 or VPOS = 0 or VPOS = 63) then 
                    if(HPOS = 79) then
                        value_out_signal<="01000010";
                    elsif(HPOS = 0) then
                        value_out_signal<="11000011";
                    elsif(VPOS =0) then
                        value_out_signal<="01000010";
                    elsif(VPOS =63) then
                        value_out_signal<="01000010";
                    end if;
                else
						if(ram_data_in = '1') then
							value_out_signal<="00100100";
						else
							value_out_signal<="10000001";
						end if;
					end if;
				state <= writepixel;
			elsif state = setpixel then
				state <= computepixel;
				signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80+ HPOS, ram_addr'length));
				signal_framebuffer_x <= std_logic_vector(to_unsigned(HPOS, signal_framebuffer_x'length));
				signal_framebuffer_y <= std_logic_vector(to_unsigned(VPOS, signal_framebuffer_y'length));
			else
				state <= getconwayram;
				-- framebuffer takes data on rising edge of take_data
				signal_take_data <= '1';
			end if;
			else 
				state <= getconwayram;
			end if;
			framebuffer_take_data <= signal_take_data;
			framebuffer_addr_x <= signal_framebuffer_x;
			framebuffer_addr_y <= signal_framebuffer_y;
			framebuffer_data_out <= value_out_signal;
			ram_addr <= signal_ram_address;
	end if;

	
	
END PROCESS;

end Behavioral;

