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
use IEEE.numeric_std.All;


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
			  take_data: in STD_Logic;
			  writeable: out STD_LOGIC;
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
				writeable<='1';
				if(take_data = '1') then
					ram_address <= std_logic_vector(to_unsigned(to_integer(unsigned(data_pixel_y))*1280 + to_integer(unsigned(data_pixel_x)), ram_address'length));
					--std_logic_vector(to_unsigned(((to_integer(unsigned(data_pixel_y))*1280 + to_integer(unsigned(data_pixel_x)) mod 1280)/16)+((to_integer(unsigned(data_pixel_y))*1280 + to_integer(unsigned(data_pixel_x))/(1280*16))*80), ram_address'length));
					ram_we <= '1';
					ram_data_output <= value_in;
				end if;
				-- Read data from the input
				value_out <= "1111111111111";
		  else 
				writeable<='0';
				-- proviede data from ram to the output
				ram_we <= '0';
				ram_address <= std_logic_vector(to_unsigned(to_integer(unsigned(vga_pixel_y))*1280 + to_integer(unsigned(vga_pixel_x)), ram_address'length));
				--std_logic_vector(to_unsigned(((to_integer(unsigned(vga_pixel_y))*1280 + to_integer(unsigned(vga_pixel_x)) mod 1280)/16)+((to_integer(unsigned(vga_pixel_y))*1280 + to_integer(unsigned(vga_pixel_x))/(1280*16))*80), ram_address'length));
				value_out <= ram_data_input;
		  end if;
    end if; 
END PROCESS;
end Behavioral;

