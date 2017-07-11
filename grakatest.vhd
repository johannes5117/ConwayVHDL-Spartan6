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
           value_out : out  STD_LOGIC_VECTOR (12 downto 0));
end grakatest;

architecture Behavioral of grakatest is
SIGNAL HPOS: INTEGER RANGE 0 TO 1280:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1024:=0;
signal value: STD_LOGIC_VECTOR(12 downto 0);
signal write_done: Std_logic:='0';
begin

PROCESS(clk)
BEGIN
    if(rising_edge(clk)) then
		if(writeable = '1') then
			take_data <= '1';
			if(Hpos>100 and Hpos <200) then
				value_out<="1000000000001";
			else
				value_out<="0010000000100";
			end if;

			IF(HPOS<1280)THEN
				HPOS<=HPOS+1;
			ELSE
				HPOS<=0;
				IF(VPOS<1024)THEN
					VPOS<=VPOS+1;
				ELSE
					VPOS<=0; 
				END IF;
			END IF;
		else
			take_data <= '0';
		end if;
    end if; 
	data_pixel_x <= std_logic_vector(to_unsigned(HPOS, data_pixel_x'length));
	data_pixel_y <=std_logic_vector(to_unsigned(VPOS, data_pixel_y'length));
END PROCESS;

end Behavioral;

