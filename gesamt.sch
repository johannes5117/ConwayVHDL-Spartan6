<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_46" />
        <signal name="clk_monitor" />
        <signal name="XLXN_54" />
        <signal name="sync_hor" />
        <signal name="sync_vert" />
        <signal name="XLXN_63" />
        <signal name="XLXN_68(11:0)" />
        <signal name="XLXN_69(11:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_96(7:0)" />
        <signal name="XLXN_192" />
        <signal name="XLXN_195" />
        <signal name="XLXN_196" />
        <signal name="XLXN_197(11:0)" />
        <signal name="XLXN_198(11:0)" />
        <signal name="XLXN_199(7:0)" />
        <signal name="XLXN_200" />
        <signal name="XLXN_209" />
        <signal name="XLXN_214(31:0)" />
        <signal name="XLXN_215" />
        <signal name="XLXN_217" />
        <signal name="XLXN_220(31:0)" />
        <signal name="XLXN_222(31:0)" />
        <signal name="XLXN_235" />
        <signal name="XLXN_236" />
        <signal name="XLXN_238" />
        <signal name="XLXN_223" />
        <signal name="XLXN_241" />
        <signal name="XLXN_243" />
        <signal name="reset" />
        <signal name="red(7:0)" />
        <signal name="blue(7:0)" />
        <signal name="green(7:0)" />
        <signal name="XLXN_213(31:0)" />
        <signal name="XLXN_253(31:0)" />
        <signal name="XLXN_234" />
        <signal name="XLXN_255(7:0)" />
        <signal name="XLXN_256(31:0)" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_monitor" />
        <port polarity="Output" name="sync_hor" />
        <port polarity="Output" name="sync_vert" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="red(7:0)" />
        <port polarity="Output" name="blue(7:0)" />
        <port polarity="Output" name="green(7:0)" />
        <blockdef name="clk_wiz_v3_6">
            <timestamp>2017-7-3T19:4:17</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="oddr2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="192" x="64" y="-304" height="484" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="320" y1="-192" y2="-192" x1="256" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="0" y1="128" y2="128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Framebuffer">
            <timestamp>2017-7-12T18:49:44</timestamp>
            <line x2="0" y1="368" y2="368" x1="64" />
            <line x2="592" y1="368" y2="368" x1="528" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="528" y="20" height="24" />
            <line x2="592" y1="32" y2="32" x1="528" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="592" y1="-336" y2="-336" x1="528" />
            <rect width="64" x="528" y="-204" height="24" />
            <line x2="592" y1="-192" y2="-192" x1="528" />
            <rect width="64" x="528" y="-60" height="24" />
            <line x2="592" y1="-48" y2="-48" x1="528" />
            <rect width="464" x="64" y="-512" height="912" />
        </blockdef>
        <blockdef name="IterationWriter">
            <timestamp>2017-7-23T16:16:16</timestamp>
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="528" y="148" height="24" />
            <line x2="592" y1="160" y2="160" x1="528" />
            <line x2="592" y1="96" y2="96" x1="528" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="592" y1="-352" y2="-352" x1="528" />
            <rect width="64" x="528" y="-300" height="24" />
            <line x2="592" y1="-288" y2="-288" x1="528" />
            <rect width="64" x="528" y="-108" height="24" />
            <line x2="592" y1="-96" y2="-96" x1="528" />
            <rect width="64" x="528" y="-44" height="24" />
            <line x2="592" y1="-32" y2="-32" x1="528" />
            <rect width="464" x="64" y="-384" height="640" />
        </blockdef>
        <blockdef name="MuxAddr32">
            <timestamp>2017-7-15T11:59:55</timestamp>
            <rect width="368" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="ConwayInitializer">
            <timestamp>2017-7-25T15:58:26</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="ConwayAutomaton">
            <timestamp>2017-7-20T16:28:4</timestamp>
            <line x2="576" y1="224" y2="224" x1="512" />
            <rect width="64" x="512" y="148" height="24" />
            <line x2="576" y1="160" y2="160" x1="512" />
            <line x2="576" y1="96" y2="96" x1="512" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
            <rect width="448" x="64" y="-256" height="512" />
        </blockdef>
        <blockdef name="VideoRam">
            <timestamp>2017-7-25T16:30:15</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
        </blockdef>
        <blockdef name="VgaController">
            <timestamp>2017-7-25T16:34:25</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ConwayRam">
            <timestamp>2017-7-25T16:40:48</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
        </blockdef>
        <block symbolname="oddr2" name="XLXI_17">
            <blockpin signalname="XLXN_46" name="D0" />
            <blockpin signalname="XLXN_54" name="D1" />
            <blockpin signalname="XLXN_42" name="C0" />
            <blockpin signalname="XLXN_43" name="C1" />
            <blockpin signalname="XLXN_46" name="CE" />
            <blockpin signalname="XLXN_54" name="R" />
            <blockpin signalname="clk_monitor" name="Q" />
            <blockpin signalname="XLXN_54" name="S" />
        </block>
        <block symbolname="clk_wiz_v3_6" name="XLXI_3">
            <blockpin signalname="clk_in" name="CLK_IN1" />
            <blockpin signalname="XLXN_209" name="CLK_OUT1" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="XLXN_209" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_209" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_22">
            <blockpin signalname="XLXN_54" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_46" name="P" />
        </block>
        <block symbolname="Framebuffer" name="XLXI_29">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_85" name="vga_mutex" />
            <blockpin signalname="XLXN_196" name="take_data" />
            <blockpin signalname="XLXN_69(11:0)" name="vga_pixel_x(11:0)" />
            <blockpin signalname="XLXN_68(11:0)" name="vga_pixel_y(11:0)" />
            <blockpin signalname="XLXN_199(7:0)" name="value_in(7:0)" />
            <blockpin signalname="XLXN_198(11:0)" name="data_pixel_x(11:0)" />
            <blockpin signalname="XLXN_197(11:0)" name="data_pixel_y(11:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="ram_data_input(7:0)" />
            <blockpin signalname="XLXN_195" name="writeable" />
            <blockpin signalname="XLXN_63" name="ram_we" />
            <blockpin signalname="XLXN_95(7:0)" name="value_out(7:0)" />
            <blockpin signalname="XLXN_256(31:0)" name="ram_address(31:0)" />
            <blockpin signalname="XLXN_255(7:0)" name="ram_data_output(7:0)" />
        </block>
        <block symbolname="IterationWriter" name="XLXI_46">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_238" name="engine_read_start" />
            <blockpin signalname="XLXN_192" name="ram_data_in" />
            <blockpin signalname="XLXN_195" name="framebuffer_writeable" />
            <blockpin signalname="XLXN_200" name="engine_write_finished" />
            <blockpin signalname="XLXN_196" name="framebuffer_take_data" />
            <blockpin signalname="XLXN_199(7:0)" name="framebuffer_data_out(7:0)" />
            <blockpin signalname="XLXN_214(31:0)" name="ram_addr(31:0)" />
            <blockpin signalname="XLXN_198(11:0)" name="framebuffer_addr_x(11:0)" />
            <blockpin signalname="XLXN_197(11:0)" name="framebuffer_addr_y(11:0)" />
            <blockpin signalname="XLXN_243" name="engine_iteration_in_progress" />
        </block>
        <block symbolname="MuxAddr32" name="XLXI_49">
            <blockpin signalname="XLXN_241" name="initConway" />
            <blockpin signalname="XLXN_243" name="engineWriter" />
            <blockpin signalname="XLXN_220(31:0)" name="addrInit(31:0)" />
            <blockpin signalname="XLXN_222(31:0)" name="addrConway(31:0)" />
            <blockpin signalname="XLXN_214(31:0)" name="addrIteration(31:0)" />
            <blockpin signalname="XLXN_213(31:0)" name="addrRam(31:0)" />
        </block>
        <block symbolname="m2_1" name="XLXI_50">
            <blockpin signalname="XLXN_223" name="D0" />
            <blockpin signalname="XLXN_217" name="D1" />
            <blockpin signalname="XLXN_241" name="S0" />
            <blockpin signalname="XLXN_215" name="O" />
        </block>
        <block symbolname="ConwayInitializer" name="XLXI_51">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_217" name="ram_we" />
            <blockpin signalname="XLXN_236" name="ram_data" />
            <blockpin signalname="XLXN_241" name="conwayAutomaton_init" />
            <blockpin signalname="XLXN_220(31:0)" name="ram_addr(31:0)" />
            <blockpin signalname="reset" name="reset" />
        </block>
        <block symbolname="m2_1" name="XLXI_54">
            <blockpin signalname="XLXN_235" name="D0" />
            <blockpin signalname="XLXN_236" name="D1" />
            <blockpin signalname="XLXN_241" name="S0" />
            <blockpin signalname="XLXN_234" name="O" />
        </block>
        <block symbolname="ConwayAutomaton" name="XLXI_53">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_192" name="ram_data_in" />
            <blockpin signalname="XLXN_241" name="initModule_init" />
            <blockpin signalname="XLXN_200" name="iterationWriter_finished" />
            <blockpin signalname="XLXN_235" name="ram_data_out" />
            <blockpin signalname="XLXN_223" name="ram_we" />
            <blockpin signalname="XLXN_238" name="iterationWriter_start" />
            <blockpin signalname="XLXN_222(31:0)" name="ram_addr(31:0)" />
            <blockpin signalname="XLXN_243" name="iterationWriter_inProgress" />
        </block>
        <block symbolname="VideoRam" name="XLXI_56">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_63" name="we" />
            <blockpin signalname="XLXN_256(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_255(7:0)" name="data_input(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="data_output(7:0)" />
        </block>
        <block symbolname="VgaController" name="XLXI_58">
            <blockpin signalname="XLXN_209" name="clk_108" />
            <blockpin signalname="XLXN_95(7:0)" name="data_in(7:0)" />
            <blockpin signalname="sync_hor" name="sync_hor" />
            <blockpin signalname="sync_vert" name="sync_vert" />
            <blockpin signalname="XLXN_85" name="mutex" />
            <blockpin signalname="XLXN_69(11:0)" name="pixel_x(11:0)" />
            <blockpin signalname="XLXN_68(11:0)" name="pixel_y(11:0)" />
            <blockpin signalname="red(7:0)" name="red(7:0)" />
            <blockpin signalname="blue(7:0)" name="blue(7:0)" />
            <blockpin signalname="green(7:0)" name="green(7:0)" />
        </block>
        <block symbolname="ConwayRam" name="XLXI_59">
            <blockpin signalname="XLXN_209" name="clk" />
            <blockpin signalname="XLXN_215" name="we" />
            <blockpin signalname="XLXN_234" name="data_input" />
            <blockpin signalname="XLXN_213(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_192" name="data_output" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1248" y="656" name="XLXI_17" orien="R0" />
        <instance x="512" y="592" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk_in">
            <wire x2="512" y1="560" y2="560" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="560" name="clk_in" orien="R180" />
        <branch name="XLXN_42">
            <wire x2="1248" y1="528" y2="528" x1="1216" />
        </branch>
        <instance x="992" y="560" name="XLXI_20" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1248" y1="592" y2="592" x1="1216" />
        </branch>
        <instance x="992" y="624" name="XLXI_21" orien="R0" />
        <instance x="896" y="848" name="XLXI_22" orien="R0" />
        <instance x="896" y="352" name="XLXI_23" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="960" y1="352" y2="400" x1="960" />
            <wire x2="1200" y1="400" y2="400" x1="960" />
            <wire x2="1248" y1="400" y2="400" x1="1200" />
            <wire x2="1200" y1="384" y2="400" x1="1200" />
            <wire x2="1232" y1="384" y2="384" x1="1200" />
            <wire x2="1232" y1="384" y2="656" x1="1232" />
            <wire x2="1248" y1="656" y2="656" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1648" y="464" name="clk_monitor" orien="R0" />
        <branch name="clk_monitor">
            <wire x2="1648" y1="464" y2="464" x1="1568" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1248" y1="464" y2="464" x1="960" />
            <wire x2="960" y1="464" y2="672" x1="960" />
            <wire x2="960" y1="672" y2="720" x1="960" />
            <wire x2="1104" y1="672" y2="672" x1="960" />
            <wire x2="1104" y1="672" y2="720" x1="1104" />
            <wire x2="1200" y1="720" y2="720" x1="1104" />
            <wire x2="1248" y1="720" y2="720" x1="1200" />
            <wire x2="1200" y1="720" y2="784" x1="1200" />
            <wire x2="1248" y1="784" y2="784" x1="1200" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="3360" y1="2912" y2="3296" x1="3360" />
            <wire x2="4192" y1="3296" y2="3296" x1="3360" />
            <wire x2="3504" y1="2912" y2="2912" x1="3360" />
            <wire x2="4192" y1="1728" y2="1728" x1="3920" />
            <wire x2="4192" y1="1728" y2="3296" x1="4192" />
        </branch>
        <branch name="XLXN_68(11:0)">
            <wire x2="3120" y1="2160" y2="2560" x1="3120" />
            <wire x2="4400" y1="2560" y2="2560" x1="3120" />
            <wire x2="3328" y1="2160" y2="2160" x1="3120" />
            <wire x2="4400" y1="656" y2="656" x1="4048" />
            <wire x2="4400" y1="656" y2="2560" x1="4400" />
        </branch>
        <branch name="XLXN_69(11:0)">
            <wire x2="3088" y1="2096" y2="2608" x1="3088" />
            <wire x2="4448" y1="2608" y2="2608" x1="3088" />
            <wire x2="3328" y1="2096" y2="2096" x1="3088" />
            <wire x2="4448" y1="592" y2="592" x1="4048" />
            <wire x2="4448" y1="592" y2="2608" x1="4448" />
        </branch>
        <instance x="3328" y="2064" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_85">
            <wire x2="4160" y1="1408" y2="1408" x1="3264" />
            <wire x2="3264" y1="1408" y2="1776" x1="3264" />
            <wire x2="3328" y1="1776" y2="1776" x1="3264" />
            <wire x2="4160" y1="528" y2="528" x1="4048" />
            <wire x2="4160" y1="528" y2="1408" x1="4160" />
        </branch>
        <branch name="XLXN_96(7:0)">
            <wire x2="3040" y1="2032" y2="2528" x1="3040" />
            <wire x2="4000" y1="2528" y2="2528" x1="3040" />
            <wire x2="4000" y1="2528" y2="2848" x1="4000" />
            <wire x2="3328" y1="2032" y2="2032" x1="3040" />
            <wire x2="4000" y1="2848" y2="2848" x1="3968" />
        </branch>
        <branch name="XLXN_95(7:0)">
            <wire x2="3552" y1="848" y2="1264" x1="3552" />
            <wire x2="3936" y1="1264" y2="1264" x1="3552" />
            <wire x2="3936" y1="1264" y2="1872" x1="3936" />
            <wire x2="3664" y1="848" y2="848" x1="3552" />
            <wire x2="3936" y1="1872" y2="1872" x1="3920" />
        </branch>
        <branch name="sync_hor">
            <wire x2="4736" y1="400" y2="400" x1="4048" />
        </branch>
        <branch name="sync_vert">
            <wire x2="4736" y1="464" y2="464" x1="4048" />
        </branch>
        <iomarker fontsize="28" x="4736" y="400" name="sync_hor" orien="R0" />
        <iomarker fontsize="28" x="4736" y="464" name="sync_vert" orien="R0" />
        <instance x="1760" y="1712" name="XLXI_46" orien="R0">
        </instance>
        <branch name="XLXN_192">
            <wire x2="1488" y1="2160" y2="2160" x1="400" />
            <wire x2="2672" y1="2160" y2="2160" x1="1488" />
            <wire x2="2672" y1="2160" y2="2336" x1="2672" />
            <wire x2="400" y1="2160" y2="2384" x1="400" />
            <wire x2="480" y1="2384" y2="2384" x1="400" />
            <wire x2="1760" y1="1552" y2="1552" x1="1488" />
            <wire x2="1488" y1="1552" y2="2160" x1="1488" />
            <wire x2="2672" y1="2336" y2="2336" x1="2656" />
        </branch>
        <branch name="XLXN_195">
            <wire x2="1760" y1="1872" y2="1872" x1="1744" />
            <wire x2="1744" y1="1872" y2="2048" x1="1744" />
            <wire x2="2752" y1="2048" y2="2048" x1="1744" />
            <wire x2="2752" y1="2048" y2="2672" x1="2752" />
            <wire x2="4048" y1="2672" y2="2672" x1="2752" />
            <wire x2="4048" y1="2432" y2="2432" x1="3920" />
            <wire x2="4048" y1="2432" y2="2672" x1="4048" />
        </branch>
        <branch name="XLXN_196">
            <wire x2="2832" y1="1808" y2="1808" x1="2352" />
            <wire x2="2832" y1="1808" y2="2432" x1="2832" />
            <wire x2="3328" y1="2432" y2="2432" x1="2832" />
        </branch>
        <branch name="XLXN_197(11:0)">
            <wire x2="2912" y1="1680" y2="1680" x1="2352" />
            <wire x2="2912" y1="1680" y2="2288" x1="2912" />
            <wire x2="3328" y1="2288" y2="2288" x1="2912" />
        </branch>
        <branch name="XLXN_198(11:0)">
            <wire x2="2960" y1="1616" y2="1616" x1="2352" />
            <wire x2="2960" y1="1616" y2="2224" x1="2960" />
            <wire x2="3328" y1="2224" y2="2224" x1="2960" />
        </branch>
        <branch name="XLXN_199(7:0)">
            <wire x2="3056" y1="1424" y2="1424" x1="2352" />
            <wire x2="3056" y1="1424" y2="1968" x1="3056" />
            <wire x2="3328" y1="1968" y2="1968" x1="3056" />
        </branch>
        <branch name="XLXN_200">
            <wire x2="368" y1="1248" y2="2512" x1="368" />
            <wire x2="480" y1="2512" y2="2512" x1="368" />
            <wire x2="2416" y1="1248" y2="1248" x1="368" />
            <wire x2="2416" y1="1248" y2="1360" x1="2416" />
            <wire x2="2416" y1="1360" y2="1360" x1="2352" />
        </branch>
        <branch name="XLXN_209">
            <wire x2="656" y1="1360" y2="1360" x1="192" />
            <wire x2="1296" y1="1360" y2="1360" x1="656" />
            <wire x2="1760" y1="1360" y2="1360" x1="1296" />
            <wire x2="1296" y1="1360" y2="1984" x1="1296" />
            <wire x2="2048" y1="1984" y2="1984" x1="1296" />
            <wire x2="2048" y1="1984" y2="2336" x1="2048" />
            <wire x2="2240" y1="2336" y2="2336" x1="2048" />
            <wire x2="192" y1="1360" y2="2320" x1="192" />
            <wire x2="192" y1="2320" y2="3040" x1="192" />
            <wire x2="576" y1="3040" y2="3040" x1="192" />
            <wire x2="480" y1="2320" y2="2320" x1="192" />
            <wire x2="928" y1="672" y2="672" x1="656" />
            <wire x2="656" y1="672" y2="960" x1="656" />
            <wire x2="3200" y1="960" y2="960" x1="656" />
            <wire x2="3200" y1="960" y2="1584" x1="3200" />
            <wire x2="3328" y1="1584" y2="1584" x1="3200" />
            <wire x2="3200" y1="1584" y2="2848" x1="3200" />
            <wire x2="3504" y1="2848" y2="2848" x1="3200" />
            <wire x2="656" y1="960" y2="1360" x1="656" />
            <wire x2="928" y1="560" y2="560" x1="896" />
            <wire x2="976" y1="560" y2="560" x1="928" />
            <wire x2="976" y1="560" y2="592" x1="976" />
            <wire x2="992" y1="592" y2="592" x1="976" />
            <wire x2="928" y1="560" y2="672" x1="928" />
            <wire x2="992" y1="528" y2="528" x1="976" />
            <wire x2="976" y1="528" y2="560" x1="976" />
            <wire x2="3200" y1="400" y2="960" x1="3200" />
            <wire x2="3664" y1="400" y2="400" x1="3200" />
        </branch>
        <branch name="XLXN_214(31:0)">
            <wire x2="1488" y1="2224" y2="3184" x1="1488" />
            <wire x2="1568" y1="3184" y2="3184" x1="1488" />
            <wire x2="2368" y1="2224" y2="2224" x1="1488" />
            <wire x2="2368" y1="1872" y2="1872" x1="2352" />
            <wire x2="2368" y1="1872" y2="2224" x1="2368" />
        </branch>
        <instance x="576" y="3264" name="XLXI_51" orien="R0">
        </instance>
        <branch name="XLXN_217">
            <wire x2="1344" y1="3104" y2="3104" x1="960" />
            <wire x2="1344" y1="2432" y2="3104" x1="1344" />
            <wire x2="1712" y1="2432" y2="2432" x1="1344" />
        </branch>
        <branch name="XLXN_220(31:0)">
            <wire x2="976" y1="3296" y2="3296" x1="960" />
            <wire x2="1568" y1="3056" y2="3056" x1="976" />
            <wire x2="976" y1="3056" y2="3296" x1="976" />
        </branch>
        <branch name="XLXN_222(31:0)">
            <wire x2="1072" y1="2704" y2="2704" x1="1056" />
            <wire x2="1072" y1="2704" y2="3120" x1="1072" />
            <wire x2="1568" y1="3120" y2="3120" x1="1072" />
        </branch>
        <instance x="1568" y="3216" name="XLXI_49" orien="R0">
        </instance>
        <branch name="XLXN_215">
            <wire x2="2240" y1="2400" y2="2400" x1="2032" />
        </branch>
        <instance x="1664" y="2832" name="XLXI_54" orien="R0" />
        <branch name="XLXN_235">
            <wire x2="1360" y1="2320" y2="2320" x1="1056" />
            <wire x2="1360" y1="2320" y2="2672" x1="1360" />
            <wire x2="1664" y1="2672" y2="2672" x1="1360" />
        </branch>
        <branch name="XLXN_236">
            <wire x2="1376" y1="3168" y2="3168" x1="960" />
            <wire x2="1376" y1="2768" y2="3168" x1="1376" />
            <wire x2="1664" y1="2768" y2="2768" x1="1376" />
            <wire x2="1664" y1="2736" y2="2768" x1="1664" />
        </branch>
        <branch name="XLXN_238">
            <wire x2="1408" y1="2384" y2="2384" x1="1056" />
            <wire x2="1408" y1="1456" y2="2384" x1="1408" />
            <wire x2="1760" y1="1456" y2="1456" x1="1408" />
        </branch>
        <instance x="480" y="2544" name="XLXI_53" orien="R0">
        </instance>
        <instance x="1712" y="2528" name="XLXI_50" orien="R0" />
        <branch name="XLXN_223">
            <wire x2="1072" y1="2640" y2="2640" x1="1056" />
            <wire x2="1712" y1="2368" y2="2368" x1="1072" />
            <wire x2="1072" y1="2368" y2="2640" x1="1072" />
        </branch>
        <branch name="XLXN_241">
            <wire x2="480" y1="2448" y2="2448" x1="416" />
            <wire x2="416" y1="2448" y2="2896" x1="416" />
            <wire x2="1136" y1="2896" y2="2896" x1="416" />
            <wire x2="1136" y1="2896" y2="2928" x1="1136" />
            <wire x2="1136" y1="2928" y2="3232" x1="1136" />
            <wire x2="1568" y1="2928" y2="2928" x1="1136" />
            <wire x2="1136" y1="3232" y2="3232" x1="960" />
            <wire x2="1712" y1="2496" y2="2496" x1="1136" />
            <wire x2="1136" y1="2496" y2="2800" x1="1136" />
            <wire x2="1136" y1="2800" y2="2896" x1="1136" />
            <wire x2="1664" y1="2800" y2="2800" x1="1136" />
        </branch>
        <branch name="XLXN_243">
            <wire x2="1232" y1="2768" y2="2768" x1="1056" />
            <wire x2="1312" y1="2768" y2="2768" x1="1232" />
            <wire x2="1312" y1="2768" y2="2992" x1="1312" />
            <wire x2="1568" y1="2992" y2="2992" x1="1312" />
            <wire x2="1760" y1="1936" y2="1936" x1="1232" />
            <wire x2="1232" y1="1936" y2="2768" x1="1232" />
        </branch>
        <branch name="reset">
            <wire x2="576" y1="3360" y2="3360" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="3360" name="reset" orien="R180" />
        <instance x="3504" y="3072" name="XLXI_56" orien="R0">
        </instance>
        <instance x="3664" y="880" name="XLXI_58" orien="R0">
        </instance>
        <branch name="red(7:0)">
            <wire x2="4672" y1="720" y2="720" x1="4048" />
        </branch>
        <branch name="blue(7:0)">
            <wire x2="4672" y1="784" y2="784" x1="4048" />
        </branch>
        <branch name="green(7:0)">
            <wire x2="4672" y1="848" y2="848" x1="4048" />
        </branch>
        <iomarker fontsize="28" x="4672" y="720" name="red(7:0)" orien="R0" />
        <iomarker fontsize="28" x="4672" y="784" name="blue(7:0)" orien="R0" />
        <iomarker fontsize="28" x="4672" y="848" name="green(7:0)" orien="R0" />
        <instance x="2240" y="2560" name="XLXI_59" orien="R0">
        </instance>
        <branch name="XLXN_213(31:0)">
            <wire x2="2160" y1="2928" y2="2928" x1="2064" />
            <wire x2="2240" y1="2528" y2="2528" x1="2160" />
            <wire x2="2160" y1="2528" y2="2928" x1="2160" />
        </branch>
        <branch name="XLXN_234">
            <wire x2="2064" y1="2688" y2="2688" x1="1984" />
            <wire x2="1984" y1="2688" y2="2704" x1="1984" />
            <wire x2="2064" y1="2464" y2="2688" x1="2064" />
            <wire x2="2240" y1="2464" y2="2464" x1="2064" />
        </branch>
        <branch name="XLXN_255(7:0)">
            <wire x2="3504" y1="3040" y2="3040" x1="3424" />
            <wire x2="3424" y1="3040" y2="3136" x1="3424" />
            <wire x2="4032" y1="3136" y2="3136" x1="3424" />
            <wire x2="4032" y1="2016" y2="2016" x1="3920" />
            <wire x2="4032" y1="2016" y2="3136" x1="4032" />
        </branch>
        <branch name="XLXN_256(31:0)">
            <wire x2="3504" y1="2976" y2="2976" x1="3456" />
            <wire x2="3456" y1="2976" y2="3104" x1="3456" />
            <wire x2="3984" y1="3104" y2="3104" x1="3456" />
            <wire x2="3984" y1="2096" y2="2096" x1="3920" />
            <wire x2="3984" y1="2096" y2="3104" x1="3984" />
        </branch>
    </sheet>
</drawing>