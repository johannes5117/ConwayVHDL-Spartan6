-- Vhdl instantiation template created from schematic C:\AdvancedEmbedded\EndProj\gesamt.sch - Fri Jul 07 23:02:22 2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT gesamt
   PORT( sync_hor	:	OUT	STD_LOGIC; 
          sync_vert	:	OUT	STD_LOGIC; 
          red	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          blue	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          green	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          clk_in	:	IN	STD_LOGIC; 
          clk_monitor	:	OUT	STD_LOGIC);
   END COMPONENT;

   UUT: gesamt PORT MAP(
		sync_hor => , 
		sync_vert => , 
		red => , 
		blue => , 
		green => , 
		clk_in => , 
		clk_monitor => 
   );
