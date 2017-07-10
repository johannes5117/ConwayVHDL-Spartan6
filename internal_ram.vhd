----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:46 07/10/2017 
-- Design Name: 
-- Module Name:    internal_ram - Behavioral 
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

entity internal_ram is
    Port ( clk : in  STD_LOGIC;
           address : in  integer;
           we : in  STD_LOGIC;
           data_input : in  STD_LOGIC_VECTOR (12 downto 0);
           data_output : out  STD_LOGIC_VECTOR (12 downto 0));
end internal_ram;

architecture Behavioral of internal_ram is

type ram_t is array (0 to 8191) of std_logic_vector(12 downto 0);
signal ram : ram_t := (others => (others => '0'));

begin

PROCESS(clk)
BEGIN
    if(rising_edge(clk)) then
        if(we='1') then
            ram(address) <= data_input;
        end if;
        data_output <= ram(address);
    end if; 
END PROCESS;

end Behavioral;

