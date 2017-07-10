----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:44 07/03/2017 
-- Design Name: 
-- Module Name:    VGA_Controller - Behavioral 
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

entity VGA_Controller is
    Port ( clk_108 : in  STD_LOGIC;
           sync_hor : out  STD_LOGIC;
           sync_vert : out  STD_LOGIC;
			  data_in: in STD_LOGIC_VECTOR(12 downto 0);
			  pixel_x: out STD_LOGIC_VECTOR(11 downto 0);
			  pixel_y: out STD_LOGIC_VECTOR(11 downto 0);
           red : out  STD_LOGIC_VECTOR (7 downto 0);
           blue : out  STD_LOGIC_VECTOR (7 downto 0);
           green : out  STD_LOGIC_VECTOR (7 downto 0));
end VGA_Controller;

ARCHITECTURE MAIN OF VGA_Controller IS
SIGNAL RGB: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;
Signal testInt: INTEGER Range 0 To 10000:=0;
Signal inc: Integer Range 0 To 5119:=0;
-- Create the FrameBuffer
BEGIN
 PROCESS(clk_108)
 BEGIN
IF(rising_edge(clk_108))THEN

	
	red<=(others=>'0');
		green<=(others=>'0');
		blue<=(others=>'0');
	
	
	IF(HPOS<1688)THEN
		HPOS<=HPOS+1;
	ELSE
		HPOS<=0;
		IF(VPOS<1066)THEN
			VPOS<=VPOS+1;
		ELSE
			VPOS<=0; 
		END IF;
	END IF;
   IF((HPOS>0 AND HPOS<408) OR (VPOS>0 AND VPOS<42))THEN
		red<=(others=>'0');
		green<=(others=>'0');
		blue<=(others=>'0');
	END IF;
   IF(HPOS>48 AND HPOS<160)THEN----HSYNC
	   sync_hor<='0';
	ELSE
	   sync_hor<='1';
	END IF;
   IF(VPOS>0 AND VPOS<4)THEN----------vsync
	   sync_vert<='0';
		testInt <= testInt +1;
		if(testInt = 0) then 
			--test(inc) <= '0';
			inc <= inc +1;
		end if;
	ELSE
	   sync_vert<='1';
	END IF;
 END IF;
 END PROCESS;
 END MAIN;

