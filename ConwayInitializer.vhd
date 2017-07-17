----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:49 07/14/2017 
-- Design Name: 
-- Module Name:    ConwayInitializer - Behavioral 
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

entity ConwayInitializer is
    Port ( clk : in  STD_LOGIC;
           ram_addr : out std_logic_vector(31 downto 0);
           ram_we : out  STD_LOGIC;
           ram_data : out  STD_LOGIC;
           conwayAutomaton_init : out  STD_LOGIC);
end ConwayInitializer;

architecture Behavioral of ConwayInitializer is
	signal signal_init_running: std_logic:='1'; 
	SIGNAL HPOS: INTEGER RANGE -1 TO 80:=-1;
	signal signal_data : std_logic:='0';
	SIGNAL VPOS: INTEGER RANGE 0 TO 64:=0;
begin
PROCESS(clk)
BEGIN

	if(rising_edge(clk) and signal_init_running='1') then
		IF(HPOS<79)THEN
			HPOS<=HPOS+1;
		ELSE
			HPOS<=0;
			IF(VPOS<63)THEN
				VPOS<=VPOS+1;
			ELSE
				VPOS<=0;
				signal_init_running <= '0';
				ram_we <= '0';
			END IF;
		END IF;
					
		if(HPOS=10 and VPOS=10) then
			signal_data <= '1';
		elsif(HPOS=1 and VPOS=1) then
			signal_data <= '1';
		elsif(HPOS=78 and VPOS=62) then
			signal_data <= '1';
		elsif(HPOS=40 and VPOS=32) then
			signal_data <= '1';
		else
			signal_data <= '0';
		end if;
		ram_we <= '1';
	end if;
	ram_addr <= std_logic_vector(to_unsigned(VPOS*80 + HPOS, ram_addr'length));
	ram_data <= signal_data;
	conwayAutomaton_init <= signal_init_running;
END PROCESS;
end Behavioral;

