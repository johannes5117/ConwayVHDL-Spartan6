-- AUTHOR: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;
use IEEE.MATH_REAL.ALL;

-- Framebuffer: saves and provides the image for the VgaController.

entity Framebuffer is
    Port ( clk : in  STD_LOGIC;
           vga_pixel_x : in  STD_LOGIC_VECTOR (11 downto 0);
           vga_pixel_y : in  STD_LOGIC_VECTOR (11 downto 0);
			  vga_mutex : in STD_LOGIC;
           value_out : out  STD_LOGIC_VECTOR (7 downto 0);
           value_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_pixel_x : in  STD_LOGIC_VECTOR (11 downto 0);
           data_pixel_y : in  STD_LOGIC_VECTOR (11 downto 0);
			  take_data: in STD_Logic;
			  writeable: out STD_LOGIC;
           ram_address : out STD_LOGIC_VECTOR (31 downto 0);
           ram_we : out  STD_LOGIC;
           ram_data_input : in  STD_LOGIC_VECTOR (7 downto 0);
           ram_data_output : out  STD_LOGIC_VECTOR (7 downto 0));
end Framebuffer;

architecture Behavioral of Framebuffer is

-- used to find the rising edge on the input take_data
signal take_data_pre : std_logic:='0';

begin
PROCESS(clk)
BEGIN
if(rising_edge(clk)) then
	-- only write to the VideoRam if the VgaController is in vsync <-> this prevents graffic glitches. Otherwise read the VideoRam for VgaController.
	if(vga_mutex='0') then
		-- signalize the "system" that the framebuffer is writeable
		writeable<='1';
		-- take data from bus if rising edge of take_data occurs
		if(take_data = '1' and take_data_pre = '0') then
			-- convert x and y notation for pixels into addresses -> to store in the ram
			ram_address <= std_logic_vector(to_unsigned(to_integer(unsigned(data_pixel_y))*80 + to_integer(unsigned(data_pixel_x)), ram_address'length));
			-- use write modus of ram
			ram_we <= '1';
			ram_data_output <= value_in;
		end if;
	else 
		writeable<='0';
		-- use read modus of ram
		ram_we <= '0';
		-- convert x and y notation for pixels into addresses -> to store in the ram
		ram_address <= std_logic_vector(to_unsigned(to_integer(unsigned(vga_pixel_y))*80+ to_integer(unsigned(vga_pixel_x)), ram_address'length));
		value_out <= ram_data_input;
	end if;
take_data_pre <= take_data;
end if; 
END PROCESS;
end Behavioral;

