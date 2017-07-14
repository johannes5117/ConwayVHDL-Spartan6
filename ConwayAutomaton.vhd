----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:10 07/14/2017 
-- Design Name: 
-- Module Name:    ConwayAutomaton - Behavioral 
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

entity ConwayAutomaton is
    Port ( clk : in  STD_LOGIC;
           ram_data_out : out  STD_LOGIC;
           ram_data_in : in  STD_LOGIC;
           ram_addr_x : out  STD_LOGIC_VECTOR (11 downto 0);
           ram_addr_y : out  STD_LOGIC_VECTOR (11 downto 0);
			  initModule_init : in STD_LOGIC;
           iterationWriter_start : out  STD_LOGIC;
           iterationWriter_finished : in  STD_LOGIC);
end ConwayAutomaton;

architecture Behavioral of ConwayAutomaton is

begin


end Behavioral;

