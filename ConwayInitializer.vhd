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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ConwayInitializer is
    Port ( clk : in  STD_LOGIC;
           ram_addr : out  STD_LOGIC;
           ram_we : out  STD_LOGIC;
           ram_data : out  STD_LOGIC;
           conwayAutomaton_init : out  STD_LOGIC);
end ConwayInitializer;

architecture Behavioral of ConwayInitializer is

begin


end Behavioral;

