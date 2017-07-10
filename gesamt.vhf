--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gesamt.vhf
-- /___/   /\     Timestamp : 07/10/2017 23:48:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/AdvancedEmbedded/EndProj/gesamt.vhf -w C:/AdvancedEmbedded/EndProj/gesamt.sch
--Design Name: gesamt
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity gesamt is
   port ( clk_in      : in    std_logic; 
          blue        : out   std_logic_vector (7 downto 0); 
          clk_monitor : out   std_logic; 
          green       : out   std_logic_vector (7 downto 0); 
          red         : out   std_logic_vector (7 downto 0); 
          sync_hor    : out   std_logic; 
          sync_vert   : out   std_logic);
end gesamt;

architecture BEHAVIORAL of gesamt is
   attribute INIT          : string ;
   attribute SRTYPE        : string ;
   attribute DDR_ALIGNMENT : string ;
   attribute BOX_TYPE      : string ;
   signal XLXN_42                         : std_logic;
   signal XLXN_43                         : std_logic;
   signal XLXN_46                         : std_logic;
   signal XLXN_54                         : std_logic;
   signal XLXN_62                         : std_logic_vector (12 downto 0);
   signal XLXN_63                         : std_logic;
   signal XLXN_64                         : std_logic;
   signal XLXN_65                         : std_logic;
   signal XLXN_66                         : std_logic_vector (12 downto 0);
   signal XLXI_29_data_pixel_x_openSignal : std_logic;
   signal XLXI_29_data_pixel_y_openSignal : std_logic;
   signal XLXI_29_value_in_openSignal     : std_logic_vector (12 downto 0);
   signal XLXI_29_vga_mutex_openSignal    : std_logic;
   signal XLXI_29_vga_pixel_x_openSignal  : std_logic;
   signal XLXI_29_vga_pixel_y_openSignal  : std_logic;
   component clk_wiz_v3_6
      port ( CLK_IN1  : in    std_logic; 
             CLK_OUT1 : out   std_logic);
   end component;
   
   component ODDR2
      -- synopsys translate_off
      generic( INIT : bit :=  '0';
               SRTYPE : string :=  "SYNC";
               DDR_ALIGNMENT : string :=  "NONE");
      -- synopsys translate_on
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             C0 : in    std_logic; 
             C1 : in    std_logic; 
             CE : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic; 
             S  : in    std_logic);
   end component;
   attribute INIT of ODDR2 : component is "0";
   attribute SRTYPE of ODDR2 : component is "SYNC";
   attribute DDR_ALIGNMENT of ODDR2 : component is "NONE";
   attribute BOX_TYPE of ODDR2 : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component VGA_Controller
      port ( clk_108   : in    std_logic; 
             sync_hor  : out   std_logic; 
             sync_vert : out   std_logic; 
             red       : out   std_logic_vector (7 downto 0); 
             blue      : out   std_logic_vector (7 downto 0); 
             green     : out   std_logic_vector (7 downto 0));
   end component;
   
   component Framebuffer
      port ( clk             : in    std_logic; 
             vga_pixel_x     : in    std_logic; 
             vga_pixel_y     : in    std_logic; 
             vga_mutex       : in    std_logic; 
             data_pixel_x    : in    std_logic; 
             data_pixel_y    : in    std_logic; 
             value_in        : in    std_logic_vector (12 downto 0); 
             ram_data_input  : in    std_logic_vector (12 downto 0); 
             ram_address     : out   std_logic; 
             ram_we          : out   std_logic; 
             value_out       : out   std_logic_vector (12 downto 0); 
             ram_data_output : out   std_logic_vector (12 downto 0));
   end component;
   
   component internal_ram
      port ( clk         : in    std_logic; 
             address     : in    std_logic; 
             we          : in    std_logic; 
             data_input  : in    std_logic_vector (12 downto 0); 
             data_output : out   std_logic_vector (12 downto 0));
   end component;
   
begin
   XLXI_3 : clk_wiz_v3_6
      port map (CLK_IN1=>clk_in,
                CLK_OUT1=>XLXN_65);
   
   XLXI_17 : ODDR2
      port map (CE=>XLXN_46,
                C0=>XLXN_42,
                C1=>XLXN_43,
                D0=>XLXN_46,
                D1=>XLXN_54,
                R=>XLXN_54,
                S=>XLXN_54,
                Q=>clk_monitor);
   
   XLXI_20 : BUF
      port map (I=>XLXN_65,
                O=>XLXN_42);
   
   XLXI_21 : INV
      port map (I=>XLXN_65,
                O=>XLXN_43);
   
   XLXI_22 : GND
      port map (G=>XLXN_54);
   
   XLXI_23 : VCC
      port map (P=>XLXN_46);
   
   XLXI_27 : VGA_Controller
      port map (clk_108=>XLXN_65,
                blue(7 downto 0)=>blue(7 downto 0),
                green(7 downto 0)=>green(7 downto 0),
                red(7 downto 0)=>red(7 downto 0),
                sync_hor=>sync_hor,
                sync_vert=>sync_vert);
   
   XLXI_29 : Framebuffer
      port map (clk=>XLXN_65,
                data_pixel_x=>XLXI_29_data_pixel_x_openSignal,
                data_pixel_y=>XLXI_29_data_pixel_y_openSignal,
                ram_data_input(12 downto 0)=>XLXN_66(12 downto 0),
                value_in(12 downto 0)=>XLXI_29_value_in_openSignal(12 downto 0),
                vga_mutex=>XLXI_29_vga_mutex_openSignal,
                vga_pixel_x=>XLXI_29_vga_pixel_x_openSignal,
                vga_pixel_y=>XLXI_29_vga_pixel_y_openSignal,
                ram_address=>XLXN_64,
                ram_data_output(12 downto 0)=>XLXN_62(12 downto 0),
                ram_we=>XLXN_63,
                value_out=>open);
   
   XLXI_30 : internal_ram
      port map (address=>XLXN_64,
                clk=>XLXN_65,
                data_input(12 downto 0)=>XLXN_62(12 downto 0),
                we=>XLXN_63,
                data_output(12 downto 0)=>XLXN_66(12 downto 0));
   
end BEHAVIORAL;


