--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gesamt.vhf
-- /___/   /\     Timestamp : 07/15/2017 15:40:28
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
----- CELL M2_1_HXILINX_gesamt -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_gesamt is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_gesamt;

architecture M2_1_HXILINX_gesamt_V of M2_1_HXILINX_gesamt is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_gesamt_V;

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
   attribute HU_SET        : string ;
   signal XLXN_42                       : std_logic;
   signal XLXN_43                       : std_logic;
   signal XLXN_46                       : std_logic;
   signal XLXN_54                       : std_logic;
   signal XLXN_63                       : std_logic;
   signal XLXN_68                       : std_logic_vector (11 downto 0);
   signal XLXN_69                       : std_logic_vector (11 downto 0);
   signal XLXN_78                       : std_logic_vector (31 downto 0);
   signal XLXN_85                       : std_logic;
   signal XLXN_94                       : std_logic_vector (7 downto 0);
   signal XLXN_95                       : std_logic_vector (7 downto 0);
   signal XLXN_96                       : std_logic_vector (7 downto 0);
   signal XLXN_189                      : std_logic;
   signal XLXN_192                      : std_logic;
   signal XLXN_195                      : std_logic;
   signal XLXN_196                      : std_logic;
   signal XLXN_197                      : std_logic_vector (11 downto 0);
   signal XLXN_198                      : std_logic_vector (11 downto 0);
   signal XLXN_199                      : std_logic_vector (7 downto 0);
   signal XLXN_200                      : std_logic;
   signal XLXN_201                      : std_logic;
   signal XLXN_203                      : std_logic;
   signal XLXN_209                      : std_logic;
   signal XLXN_213                      : std_logic_vector (31 downto 0);
   signal XLXN_214                      : std_logic_vector (31 downto 0);
   signal XLXN_215                      : std_logic;
   signal XLXN_217                      : std_logic;
   signal XLXN_220                      : std_logic_vector (31 downto 0);
   signal XLXN_221                      : std_logic;
   signal XLXI_49_addrConway_openSignal : std_logic_vector (31 downto 0);
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
             data_in   : in    std_logic_vector (7 downto 0); 
             sync_hor  : out   std_logic; 
             sync_vert : out   std_logic; 
             mutex     : out   std_logic; 
             pixel_x   : out   std_logic_vector (11 downto 0); 
             pixel_y   : out   std_logic_vector (11 downto 0); 
             red       : out   std_logic_vector (7 downto 0); 
             blue      : out   std_logic_vector (7 downto 0); 
             green     : out   std_logic_vector (7 downto 0));
   end component;
   
   component Framebuffer
      port ( clk             : in    std_logic; 
             vga_mutex       : in    std_logic; 
             take_data       : in    std_logic; 
             vga_pixel_x     : in    std_logic_vector (11 downto 0); 
             vga_pixel_y     : in    std_logic_vector (11 downto 0); 
             value_in        : in    std_logic_vector (7 downto 0); 
             data_pixel_x    : in    std_logic_vector (11 downto 0); 
             data_pixel_y    : in    std_logic_vector (11 downto 0); 
             ram_data_input  : in    std_logic_vector (7 downto 0); 
             writeable       : out   std_logic; 
             ram_we          : out   std_logic; 
             value_out       : out   std_logic_vector (7 downto 0); 
             ram_address     : out   std_logic_vector (31 downto 0); 
             ram_data_output : out   std_logic_vector (7 downto 0));
   end component;
   
   component internal_ram
      port ( clk         : in    std_logic; 
             we          : in    std_logic; 
             address     : in    std_logic_vector (31 downto 0); 
             data_input  : in    std_logic_vector (7 downto 0); 
             data_output : out   std_logic_vector (7 downto 0));
   end component;
   
   component IterationWriter
      port ( clk                   : in    std_logic; 
             engine_read_start     : in    std_logic; 
             ram_data_in           : in    std_logic; 
             engine_write_finished : out   std_logic; 
             framebuffer_take_data : out   std_logic; 
             framebuffer_data_out  : out   std_logic_vector (7 downto 0); 
             framebuffer_addr_x    : out   std_logic_vector (11 downto 0); 
             framebuffer_addr_y    : out   std_logic_vector (11 downto 0); 
             framebuffer_writeable : in    std_logic; 
             ram_addr              : out   std_logic_vector (31 downto 0));
   end component;
   
   component Conway_Ram
      port ( clk         : in    std_logic; 
             we          : in    std_logic; 
             data_input  : in    std_logic; 
             data_output : out   std_logic; 
             address     : in    std_logic_vector (31 downto 0));
   end component;
   
   component MuxAddr32
      port ( initConway    : in    std_logic; 
             engineWriter  : in    std_logic; 
             addrInit      : in    std_logic_vector (31 downto 0); 
             addrConway    : in    std_logic_vector (31 downto 0); 
             addrIteration : in    std_logic_vector (31 downto 0); 
             addrRam       : out   std_logic_vector (31 downto 0));
   end component;
   
   component M2_1_HXILINX_gesamt
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component ConwayInitializer
      port ( clk                  : in    std_logic; 
             ram_we               : out   std_logic; 
             ram_data             : out   std_logic; 
             conwayAutomaton_init : out   std_logic; 
             ram_addr             : out   std_logic_vector (31 downto 0));
   end component;
   
   attribute HU_SET of XLXI_50 : label is "XLXI_50_0";
begin
   XLXI_3 : clk_wiz_v3_6
      port map (CLK_IN1=>clk_in,
                CLK_OUT1=>XLXN_209);
   
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
      port map (I=>XLXN_209,
                O=>XLXN_42);
   
   XLXI_21 : INV
      port map (I=>XLXN_209,
                O=>XLXN_43);
   
   XLXI_22 : GND
      port map (G=>XLXN_54);
   
   XLXI_23 : VCC
      port map (P=>XLXN_46);
   
   XLXI_27 : VGA_Controller
      port map (clk_108=>XLXN_209,
                data_in(7 downto 0)=>XLXN_95(7 downto 0),
                blue(7 downto 0)=>blue(7 downto 0),
                green(7 downto 0)=>green(7 downto 0),
                mutex=>XLXN_85,
                pixel_x(11 downto 0)=>XLXN_69(11 downto 0),
                pixel_y(11 downto 0)=>XLXN_68(11 downto 0),
                red(7 downto 0)=>red(7 downto 0),
                sync_hor=>sync_hor,
                sync_vert=>sync_vert);
   
   XLXI_29 : Framebuffer
      port map (clk=>XLXN_209,
                data_pixel_x(11 downto 0)=>XLXN_198(11 downto 0),
                data_pixel_y(11 downto 0)=>XLXN_197(11 downto 0),
                ram_data_input(7 downto 0)=>XLXN_96(7 downto 0),
                take_data=>XLXN_196,
                value_in(7 downto 0)=>XLXN_199(7 downto 0),
                vga_mutex=>XLXN_85,
                vga_pixel_x(11 downto 0)=>XLXN_69(11 downto 0),
                vga_pixel_y(11 downto 0)=>XLXN_68(11 downto 0),
                ram_address(31 downto 0)=>XLXN_78(31 downto 0),
                ram_data_output(7 downto 0)=>XLXN_94(7 downto 0),
                ram_we=>XLXN_63,
                value_out(7 downto 0)=>XLXN_95(7 downto 0),
                writeable=>XLXN_195);
   
   XLXI_30 : internal_ram
      port map (address(31 downto 0)=>XLXN_78(31 downto 0),
                clk=>XLXN_209,
                data_input(7 downto 0)=>XLXN_94(7 downto 0),
                we=>XLXN_63,
                data_output(7 downto 0)=>XLXN_96(7 downto 0));
   
   XLXI_46 : IterationWriter
      port map (clk=>XLXN_209,
                engine_read_start=>XLXN_189,
                framebuffer_writeable=>XLXN_195,
                ram_data_in=>XLXN_192,
                engine_write_finished=>XLXN_200,
                framebuffer_addr_x(11 downto 0)=>XLXN_198(11 downto 0),
                framebuffer_addr_y(11 downto 0)=>XLXN_197(11 downto 0),
                framebuffer_data_out(7 downto 0)=>XLXN_199(7 downto 0),
                framebuffer_take_data=>XLXN_196,
                ram_addr(31 downto 0)=>XLXN_214(31 downto 0));
   
   XLXI_47 : Conway_Ram
      port map (address(31 downto 0)=>XLXN_213(31 downto 0),
                clk=>XLXN_209,
                data_input=>XLXN_201,
                we=>XLXN_215,
                data_output=>XLXN_192);
   
   XLXI_49 : MuxAddr32
      port map (addrConway(31 downto 0)=>XLXI_49_addrConway_openSignal(31 
            downto 0),
                addrInit(31 downto 0)=>XLXN_220(31 downto 0),
                addrIteration(31 downto 0)=>XLXN_214(31 downto 0),
                engineWriter=>XLXN_189,
                initConway=>XLXN_203,
                addrRam(31 downto 0)=>XLXN_213(31 downto 0));
   
   XLXI_50 : M2_1_HXILINX_gesamt
      port map (D0=>XLXN_221,
                D1=>XLXN_217,
                S0=>XLXN_203,
                O=>XLXN_215);
   
   XLXI_51 : ConwayInitializer
      port map (clk=>XLXN_209,
                conwayAutomaton_init=>XLXN_203,
                ram_addr(31 downto 0)=>XLXN_220(31 downto 0),
                ram_data=>XLXN_201,
                ram_we=>XLXN_217);
   
   XLXI_52 : GND
      port map (G=>XLXN_221);
   
end BEHAVIORAL;


