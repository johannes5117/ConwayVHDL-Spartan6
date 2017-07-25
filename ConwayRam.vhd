--Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;

-- ConwayRam: Stores conway iteration state

entity ConwayRam is
    Port ( clk : in  STD_LOGIC;
           address : in  std_logic_vector(31 downto 0);
           we : in  STD_LOGIC;
           data_input : in  STD_LOGIC;
           data_output : out  STD_LOGIC);
end ConwayRam;

architecture Behavioral of ConwayRam is
type ram_t is array (0 to 5120) of std_logic;
signal ram : ram_t := (others => ('0'));

begin
PROCESS(clk)
BEGIN
if(rising_edge(clk)) then
	if(we='1') then
		ram(to_integer(unsigned(address))) <= data_input;
	end if;
	data_output <= ram(to_integer(unsigned(address)));
end if; 
END PROCESS;
end Behavioral;

