----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:33:30 07/11/2017 
-- Design Name: 
-- Module Name:    grakatest - Behavioral 
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

entity grakatest is
    Port ( clk : in  STD_LOGIC;
           take_data : out  STD_LOGIC;
           writeable : in  STD_LOGIC;
           data_pixel_x : out  STD_LOGIC_VECTOR (11 downto 0);
           data_pixel_y : out  STD_LOGIC_VECTOR (11 downto 0);
           value_out : out  STD_LOGIC_VECTOR (7 downto 0));
end grakatest;

architecture Behavioral of grakatest is
SIGNAL HPOS: INTEGER RANGE 0 TO 80:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 64:=0;
signal value: STD_LOGIC_VECTOR(7 downto 0);
signal write_done: Std_logic:='0';
signal value_out_signal : std_logic_vector (7 downto 0);
signal divider : std_logic:='0';
begin

PROCESS(clk)
BEGIN
    if(rising_edge(clk)) then
	 		if(writeable = '1') then

				
					IF(HPOS<79)THEN
						HPOS<=HPOS+1;
					ELSE
						HPOS<=0;
						IF(VPOS<63)THEN
							VPOS<=VPOS+1;
						ELSE
							VPOS<=0; 
						END IF;
					END IF;
					
					take_data <= '1';
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
					if(HPOS = 2) then
						value_out_signal<="11000011";
					elsif(HPOS = 10) then
						value_out_signal<="01000010";
					elsif(HPOS = 56) then
						value_out_signal<="10100101";
					elsif(HPOS = 40 and VPOS = 32) then
						value_out_signal<="10100101";
					elsif(VPOS = 20) then
						value_out_signal<="10000001";
					elsif(VPOS =4) then
						value_out_signal<="11000011";
					elsif(VPOS =55 and HPOS = 70) then
						value_out_signal<="11000011";
					elsif(VPOS =32 and HPOS = 23) then
						value_out_signal<="11000011";
					elsif(VPOS =59 and HPOS = 59) then
						value_out_signal<="11000011";
					else
						value_out_signal<="00000000";
					end if;
					end if;
					data_pixel_x <= std_logic_vector(to_unsigned(HPOS, data_pixel_x'length));
					data_pixel_y <=std_logic_vector(to_unsigned(VPOS, data_pixel_y'length));
					value_out <= value_out_signal;
			else
				take_data <= '0';
		end if;
	end if;

	
	
END PROCESS;

end Behavioral;

