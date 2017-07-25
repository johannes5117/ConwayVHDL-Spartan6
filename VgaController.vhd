-- Author: Johannes Engler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.All;

-- VgaController: grabs the pixel value from the framebuffer and writes it to the vga port

entity VgaController is
    Port ( clk_108 : in  STD_LOGIC;
           sync_hor : out  STD_LOGIC;
           sync_vert : out  STD_LOGIC;
			  data_in: in STD_LOGIC_VECTOR(7 downto 0);
			  pixel_x: out STD_LOGIC_VECTOR(11 downto 0);
			  pixel_y: out STD_LOGIC_VECTOR(11 downto 0);
			  mutex: out STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (7 downto 0);
           blue : out  STD_LOGIC_VECTOR (7 downto 0);
           green : out  STD_LOGIC_VECTOR (7 downto 0));
end VgaController;

ARCHITECTURE MAIN OF VgaController IS
-- Counting variables (HPOS, VPOS for single pixels) and (HSCALE, VSCALE for pixel blocks (conway)) 
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;
Signal HSCALE: INTEGER Range 0 to 80:=0;
Signal VSCALE: INTEGER RANGE 0 TO 64:=0;
-- signalize the framebuffer that it can be written to 
signal signal_mutex: STD_LOGIC := '0';
BEGIN
PROCESS(clk_108)
BEGIN
if(rising_edge(clk_108))then
	-- if in the visible area (not porch) grab the value for the pixel
	if(HPOS>=408 and ((HPOS-408) mod 16) = 0 and VPOS >= 42) then
		red<=(others=>data_in(0));
		green<=(others=>data_in(1));
		blue<=(others=>data_in(2));	
		if(HSCALE<79)then
			pixel_x <= std_logic_vector(to_unsigned(HSCALE,pixel_x'length));
			pixel_y <= std_logic_vector(to_unsigned(VSCALE,pixel_y'length));
			HSCALE<=HSCALE+1;
		else
			pixel_x <= std_logic_vector(to_unsigned(HSCALE,pixel_x'length));
			pixel_y <= std_logic_vector(to_unsigned(VSCALE,pixel_y'length));	
		end if;
	end if;
	-- increment the counters 
	if(HPOS<1688)then
		HPOS<=HPOS+1;
	else
		HPOS<=0;
		if(VPOS<1066)then
			VPOS<=VPOS+1;
			if(VPOS>42 and ((VPOS-42) mod 16) = 0)  then
				if(VSCALE<63)then
					VSCALE<=VSCALE+1;	
				end if;
			end if;
		else
			VPOS<=0; 
		end if;
	end if;
	-- in the porch area -> set pixel to black
   if((HPOS>0 AND HPOS<408) OR (VPOS>0 AND VPOS<42))then
		red<=(others=>'0');
		green<=(others=>'0');
		blue<=(others=>'0');
	end if;
	-- use a small area where the framebuffer can be written and automaton works 
   if((VPOS>10 AND VPOS<32))then
		mutex <= '0';
	else
		mutex <= '1';
	end if;
	-- hsync area -> for the vga signal
   if(HPOS>48 AND HPOS<160)then
	   sync_hor<='0';
		HSCALE <= 1;
		pixel_x <= std_logic_vector(to_unsigned(0,pixel_x'length));
		pixel_y <= std_logic_vector(to_unsigned(VSCALE,pixel_y'length));
	else
	   sync_hor<='1';
	end if;
	-- vsync area -> for the vga signal
   if(VPOS>0 AND VPOS<4)then
		VSCALE <= 0;
		pixel_y <= std_logic_vector(to_unsigned(0,pixel_y'length));
	   sync_vert<='0';
	else
	   sync_vert<='1';
	end if;
end if;
end PROCESS;
end MAIN;

