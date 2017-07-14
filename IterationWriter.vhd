----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:57 07/14/2017 
-- Design Name: 
-- Module Name:    IterationWriter - Behavioral 
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

entity IterationWriter is
    Port ( clk : in  STD_LOGIC;
           engine_write_finished : out  STD_LOGIC;
           engine_read_start : in  STD_LOGIC;
           ram_data_in : in  STD_LOGIC;
           framebuffer_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           ram_addr_x : out  STD_LOGIC_VECTOR (11 downto 0);
           ram_addr_y : out  STD_LOGIC_VECTOR (11 downto 0);
           framebuffer_addr_x : out  STD_LOGIC_VECTOR (11 downto 0);
           framebuffer_addr_y : out  STD_LOGIC_VECTOR (11 downto 0);
           framebuffer_mutex : in  STD_LOGIC);
end IterationWriter;

architecture Behavioral of IterationWriter is

begin


end Behavioral;

