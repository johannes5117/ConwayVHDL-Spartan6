----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:28 07/10/2017 
-- Design Name: 
-- Module Name:    Framebuffer - Behavioral 
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

entity Framebuffer is
    Port ( clk : in  STD_LOGIC;
           vga_pixel_x : in  STD_LOGIC_VECTOR (11 downto 0);
           vga_pixel_y : in  STD_LOGIC_VECTOR (11 downto 0);
			  vga_mutex : in STD_LOGIC;
           value_out : out  STD_LOGIC_VECTOR (12 downto 0);
           value_in : in  STD_LOGIC_VECTOR (12 downto 0);
           data_pixel_x : in  STD_LOGIC_VECTOR (11 downto 0);
           data_pixel_y : in  STD_LOGIC_VECTOR (11 downto 0);
           ram_address : out STD_LOGIC_VECTOR (31 downto 0);
           ram_we : out  STD_LOGIC;
           ram_data_input : in  STD_LOGIC_VECTOR (12 downto 0);
           ram_data_output : out  STD_LOGIC_VECTOR (12 downto 0));
end Framebuffer;

architecture Behavioral of Framebuffer is

begin

PROCESS(clk)
BEGIN
    if(rising_edge(clk)) then
        if(vga_mutex='0') then
				-- Read data from the input
				ram_address <= (((integer(to_unsigned(data_pixel_y))*1280 + data_pixel_x) mod 1280)/16)+((integer(to_unsigned(data_pixel_y))*1280 + data_pixel_x)/(1280*16))*80;
				--ram_we <= '1';
				value_out <= "1111111111111";
		  else 
		    -- proviede data from ram to the output
				ram_we <= '0';
				ram_address <= ((((vga_pixel_y)*1280 + vga_pixel_x) mod 1280)/16)+((vga_pixel_y*1280 + vga_pixel_x)/(1280*16))*80;
				--value_out <= ram_data_input;
				value_out <= "0000000000000";
		  end if;
    end if; 
END PROCESS;
end Behavioral;

