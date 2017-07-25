-- Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- MuxAddr32: Simple 3 way 32 bit Mux -> to control ConwayRam access between three parties

entity MuxAddr32 is
    Port ( initConway : in  STD_LOGIC;
           engineWriter : in  STD_LOGIC;
           addrInit : in  STD_LOGIC_VECTOR (31 downto 0);
           addrConway : in  STD_LOGIC_VECTOR (31 downto 0);
           addrIteration : in  STD_LOGIC_VECTOR (31 downto 0);
           addrRam : out  STD_LOGIC_VECTOR (31 downto 0));
end MuxAddr32;

architecture Behavioral of MuxAddr32 is

begin

addrRam <= addrInit when initConway ='1' else
				addrConway when  (initConway ='0' and engineWriter ='0') else
				addrIteration when (initConway ='0' and engineWriter ='1');


end Behavioral;

