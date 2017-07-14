----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:35 07/14/2017 
-- Design Name: 
-- Module Name:    Conway_Ram - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Conway_Ram is
    Port ( clk : in  STD_LOGIC;
           address : in  Integer;
           we : in  STD_LOGIC;
           data_input : in  STD_LOGIC;
           data_output : out  STD_LOGIC);
end Conway_Ram;

architecture Behavioral of Conway_Ram is
type ram_t is array (0 to 5120) of std_logic;
signal ram : ram_t := (others => ('0'));
--attribute ram_style: string;
--attribute ram_style of ram : signal is "auto";

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

