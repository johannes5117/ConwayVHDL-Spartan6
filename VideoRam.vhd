-- Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;

-- VideoRam: Stores the current frame

entity VideoRam is
    Port ( clk : in  STD_LOGIC;
           address : in  STD_LOGIC_VECTOR(31 downto 0);
           we : in  STD_LOGIC;
           data_input : in  STD_LOGIC_VECTOR (7 downto 0);
           data_output : out  STD_LOGIC_VECTOR (7 downto 0));
end VideoRam;

architecture Behavioral of VideoRam is

type ram_t is array (0 to 5120) of STD_LOGIC_VECTOR(7 downto 0);
signal ram : ram_t := (others => (others => '1'));

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

