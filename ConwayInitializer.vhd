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
			  reset : in STD_LOGIC;
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
	signal signal_ram_address: std_logic_vector(31 downto 0);
	signal divider : std_logic:='0';
	signal divider_two : std_logic:='0';
begin
PROCESS(clk)
BEGIN

	if(rising_edge(clk)) then
		if(reset ='0')then
			signal_init_running <= '1';
			HPOS <= -1;
			VPOS <= 0;
		elsif( signal_init_running='1' ) then
	  if(divider='0' and divider_two ='0') then
		IF(HPOS<79)THEN
			HPOS<=HPOS+1;
		ELSE
			HPOS<=0;
			IF(VPOS<63)THEN
				VPOS<=VPOS+1;
			ELSE
				VPOS<=0;
				signal_init_running <= '0';
			END IF;
		END IF;
					
		
		divider <= '1';
		elsif(divider = '1' and divider_two='0') then
			signal_ram_address <= std_logic_vector(to_unsigned(VPOS*80 + HPOS-1, ram_addr'length));
			if(HPOS=1 and VPOS=2) then 
 signal_data <= '1';
elsif(HPOS=2 and VPOS=2) then 
 signal_data <= '1';
elsif(HPOS=3 and VPOS=2) then 
 signal_data <= '1';
elsif(HPOS=61 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=62 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=63 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=64 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=65 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=66 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=67 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=68 and VPOS=6) then 
 signal_data <= '1';
elsif(HPOS=61 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=63 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=64 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=65 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=66 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=68 and VPOS=7) then 
 signal_data <= '1';
elsif(HPOS=61 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=62 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=63 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=64 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=65 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=66 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=67 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=68 and VPOS=8) then 
 signal_data <= '1';
elsif(HPOS=28 and VPOS=15) then 
 signal_data <= '1';
elsif(HPOS=26 and VPOS=16) then 
 signal_data <= '1';
elsif(HPOS=28 and VPOS=16) then 
 signal_data <= '1';
elsif(HPOS=16 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=17 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=24 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=25 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=38 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=39 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=59 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=60 and VPOS=17) then 
 signal_data <= '1';
elsif(HPOS=15 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=19 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=24 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=25 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=38 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=39 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=59 and VPOS=18) then 
 signal_data <= '1';
elsif(HPOS=4 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=5 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=14 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=20 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=24 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=25 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=62 and VPOS=19) then 
 signal_data <= '1';
elsif(HPOS=4 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=5 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=14 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=18 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=20 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=21 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=26 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=28 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=61 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=62 and VPOS=20) then 
 signal_data <= '1';
elsif(HPOS=14 and VPOS=21) then 
 signal_data <= '1';
elsif(HPOS=20 and VPOS=21) then 
 signal_data <= '1';
elsif(HPOS=28 and VPOS=21) then 
 signal_data <= '1';
elsif(HPOS=15 and VPOS=22) then 
 signal_data <= '1';
elsif(HPOS=19 and VPOS=22) then 
 signal_data <= '1';
elsif(HPOS=16 and VPOS=23) then 
 signal_data <= '1';
elsif(HPOS=17 and VPOS=23) then 
 signal_data <= '1';
elsif(HPOS=15 and VPOS=42) then 
 signal_data <= '1';
elsif(HPOS=16 and VPOS=42) then 
 signal_data <= '1';
elsif(HPOS=14 and VPOS=43) then 
 signal_data <= '1';
elsif(HPOS=15 and VPOS=43) then 
 signal_data <= '1';
elsif(HPOS=15 and VPOS=44) then 
 signal_data <= '1';
elsif(HPOS=76 and VPOS=61) then 
 signal_data <= '1';
elsif(HPOS=77 and VPOS=61) then 
 signal_data <= '1';
elsif(HPOS=78 and VPOS=61) then 
 signal_data <= '1';

			else
				signal_data <= '0';
			end if;
			divider_two <= '1';
		else
			divider<='0';
			divider_two <='0';
		end if; 
		end if;
	end if;
	ram_addr <= signal_ram_address;
	ram_data <= signal_data;
	ram_we <= '1';
	conwayAutomaton_init <= signal_init_running;
END PROCESS;
end Behavioral;

