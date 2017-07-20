----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:38 07/15/2017 
-- Design Name: 
-- Module Name:    MuxAddr32 - Behavioral 
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

