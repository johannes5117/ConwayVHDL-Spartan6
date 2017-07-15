<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sync_hor" />
        <signal name="sync_vert" />
        <signal name="red(7:0)" />
        <signal name="blue(7:0)" />
        <signal name="green(7:0)" />
        <signal name="clk_in" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_46" />
        <signal name="clk_monitor" />
        <signal name="XLXN_54" />
        <signal name="XLXN_63" />
        <signal name="XLXN_68(11:0)" />
        <signal name="XLXN_69(11:0)" />
        <signal name="XLXN_78(31:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_94(7:0)" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_96(7:0)" />
        <signal name="XLXN_97" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106(11:0)" />
        <signal name="XLXN_107(11:0)" />
        <signal name="XLXN_108(7:0)" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <port polarity="Output" name="sync_hor" />
        <port polarity="Output" name="sync_vert" />
        <port polarity="Output" name="red(7:0)" />
        <port polarity="Output" name="blue(7:0)" />
        <port polarity="Output" name="green(7:0)" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_monitor" />
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
        <blockdef name="VGA_Controller">
            <timestamp>2017-7-12T18:49:1</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="576" />
        </blockdef>
        <blockdef name="internal_ram">
            <timestamp>2017-7-12T18:49:7</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="368" x="64" y="-256" height="320" />
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
        <blockdef name="Conway_Ram">
            <timestamp>2017-7-14T15:58:54</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="ConwayAutomaton">
            <timestamp>2017-7-14T16:18:14</timestamp>
            <line x2="576" y1="96" y2="96" x1="512" />
            <line x2="576" y1="32" y2="32" x1="512" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
            <rect width="448" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="IterationWriter">
            <timestamp>2017-7-14T16:18:22</timestamp>
            <line x2="592" y1="96" y2="96" x1="528" />
            <line x2="592" y1="32" y2="32" x1="528" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="592" y1="-352" y2="-352" x1="528" />
            <rect width="64" x="528" y="-300" height="24" />
            <line x2="592" y1="-288" y2="-288" x1="528" />
            <rect width="64" x="528" y="-108" height="24" />
            <line x2="592" y1="-96" y2="-96" x1="528" />
            <rect width="64" x="528" y="-44" height="24" />
            <line x2="592" y1="-32" y2="-32" x1="528" />
            <rect width="464" x="64" y="-384" height="512" />
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
            <blockpin signalname="XLXN_97" name="CLK_OUT1" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="XLXN_97" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_97" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_22">
            <blockpin signalname="XLXN_54" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_46" name="P" />
        </block>
        <block symbolname="VGA_Controller" name="XLXI_27">
            <blockpin signalname="XLXN_97" name="clk_108" />
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
        <block symbolname="Framebuffer" name="XLXI_29">
            <blockpin signalname="XLXN_97" name="clk" />
            <blockpin signalname="XLXN_85" name="vga_mutex" />
            <blockpin signalname="XLXN_110" name="take_data" />
            <blockpin signalname="XLXN_69(11:0)" name="vga_pixel_x(11:0)" />
            <blockpin signalname="XLXN_68(11:0)" name="vga_pixel_y(11:0)" />
            <blockpin signalname="XLXN_108(7:0)" name="value_in(7:0)" />
            <blockpin signalname="XLXN_106(11:0)" name="data_pixel_x(11:0)" />
            <blockpin signalname="XLXN_107(11:0)" name="data_pixel_y(11:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="ram_data_input(7:0)" />
            <blockpin signalname="XLXN_105" name="writeable" />
            <blockpin signalname="XLXN_63" name="ram_we" />
            <blockpin signalname="XLXN_95(7:0)" name="value_out(7:0)" />
            <blockpin signalname="XLXN_78(31:0)" name="ram_address(31:0)" />
            <blockpin signalname="XLXN_94(7:0)" name="ram_data_output(7:0)" />
        </block>
        <block symbolname="internal_ram" name="XLXI_30">
            <blockpin signalname="XLXN_97" name="clk" />
            <blockpin signalname="XLXN_63" name="we" />
            <blockpin signalname="XLXN_78(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_94(7:0)" name="data_input(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="data_output(7:0)" />
        </block>
        <block symbolname="Conway_Ram" name="XLXI_32">
            <blockpin signalname="XLXN_97" name="clk" />
            <blockpin signalname="XLXN_99" name="address" />
            <blockpin signalname="XLXN_109" name="we" />
            <blockpin signalname="XLXN_100" name="data_input" />
            <blockpin signalname="XLXN_102" name="data_output" />
        </block>
        <block symbolname="ConwayAutomaton" name="XLXI_33">
            <blockpin signalname="XLXN_97" name="clk" />
            <blockpin signalname="XLXN_102" name="ram_data_in" />
            <blockpin name="initModule_init" />
            <blockpin signalname="XLXN_103" name="iterationWriter_finished" />
            <blockpin signalname="XLXN_100" name="ram_data_out" />
            <blockpin signalname="XLXN_99" name="ram_addr" />
            <blockpin signalname="XLXN_104" name="iterationWriter_start" />
            <blockpin signalname="XLXN_109" name="ram_we" />
        </block>
        <block symbolname="IterationWriter" name="XLXI_34">
            <blockpin signalname="XLXN_97" name="clk" />
            <blockpin signalname="XLXN_104" name="engine_read_start" />
            <blockpin signalname="XLXN_102" name="ram_data_in" />
            <blockpin signalname="XLXN_105" name="framebuffer_mutex" />
            <blockpin signalname="XLXN_103" name="engine_write_finished" />
            <blockpin signalname="XLXN_99" name="ram_addr" />
            <blockpin signalname="XLXN_108(7:0)" name="framebuffer_data_out(7:0)" />
            <blockpin signalname="XLXN_106(11:0)" name="framebuffer_addr_x(11:0)" />
            <blockpin signalname="XLXN_107(11:0)" name="framebuffer_addr_y(11:0)" />
            <blockpin signalname="XLXN_110" name="framebuffer_take_data" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="sync_hor">
            <wire x2="3472" y1="192" y2="192" x1="2944" />
        </branch>
        <branch name="sync_vert">
            <wire x2="3472" y1="256" y2="256" x1="2944" />
        </branch>
        <branch name="red(7:0)">
            <wire x2="3472" y1="320" y2="320" x1="2944" />
        </branch>
        <branch name="blue(7:0)">
            <wire x2="3472" y1="384" y2="384" x1="2944" />
        </branch>
        <branch name="green(7:0)">
            <wire x2="3472" y1="448" y2="448" x1="2944" />
        </branch>
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
        <instance x="2560" y="480" name="XLXI_27" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3472" y="192" name="sync_hor" orien="R0" />
        <iomarker fontsize="28" x="3472" y="256" name="sync_vert" orien="R0" />
        <iomarker fontsize="28" x="3472" y="320" name="red(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3472" y="384" name="blue(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3472" y="448" name="green(7:0)" orien="R0" />
        <instance x="2320" y="2272" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_63">
            <wire x2="2304" y1="1936" y2="2176" x1="2304" />
            <wire x2="2320" y1="2176" y2="2176" x1="2304" />
            <wire x2="2816" y1="1936" y2="1936" x1="2304" />
            <wire x2="2816" y1="1056" y2="1056" x1="2768" />
            <wire x2="2816" y1="1056" y2="1936" x1="2816" />
        </branch>
        <branch name="XLXN_78(31:0)">
            <wire x2="2320" y1="2304" y2="2304" x1="2304" />
            <wire x2="2304" y1="2304" y2="2384" x1="2304" />
            <wire x2="2880" y1="2384" y2="2384" x1="2304" />
            <wire x2="2880" y1="1424" y2="1424" x1="2768" />
            <wire x2="2880" y1="1424" y2="2384" x1="2880" />
        </branch>
        <branch name="XLXN_68(11:0)">
            <wire x2="3008" y1="800" y2="800" x1="2096" />
            <wire x2="2096" y1="800" y2="1488" x1="2096" />
            <wire x2="2176" y1="1488" y2="1488" x1="2096" />
            <wire x2="3008" y1="576" y2="576" x1="2944" />
            <wire x2="3008" y1="576" y2="800" x1="3008" />
        </branch>
        <branch name="XLXN_69(11:0)">
            <wire x2="3056" y1="768" y2="768" x1="2128" />
            <wire x2="2128" y1="768" y2="1424" x1="2128" />
            <wire x2="2176" y1="1424" y2="1424" x1="2128" />
            <wire x2="3056" y1="512" y2="512" x1="2944" />
            <wire x2="3056" y1="512" y2="768" x1="3056" />
        </branch>
        <instance x="2176" y="1392" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_85">
            <wire x2="2976" y1="848" y2="848" x1="2176" />
            <wire x2="2176" y1="848" y2="912" x1="2176" />
            <wire x2="2176" y1="912" y2="1104" x1="2176" />
            <wire x2="2976" y1="640" y2="640" x1="2944" />
            <wire x2="2976" y1="640" y2="848" x1="2976" />
        </branch>
        <branch name="XLXN_94(7:0)">
            <wire x2="2320" y1="2240" y2="2240" x1="2240" />
            <wire x2="2240" y1="2240" y2="2416" x1="2240" />
            <wire x2="2960" y1="2416" y2="2416" x1="2240" />
            <wire x2="2960" y1="1344" y2="1344" x1="2768" />
            <wire x2="2960" y1="1344" y2="2416" x1="2960" />
        </branch>
        <branch name="XLXN_95(7:0)">
            <wire x2="2560" y1="512" y2="512" x1="2496" />
            <wire x2="2496" y1="512" y2="784" x1="2496" />
            <wire x2="2832" y1="784" y2="784" x1="2496" />
            <wire x2="2832" y1="784" y2="1200" x1="2832" />
            <wire x2="2832" y1="1200" y2="1200" x1="2768" />
        </branch>
        <branch name="XLXN_96(7:0)">
            <wire x2="2176" y1="1360" y2="1360" x1="2160" />
            <wire x2="2160" y1="1360" y2="1808" x1="2160" />
            <wire x2="2912" y1="1808" y2="1808" x1="2160" />
            <wire x2="2912" y1="1808" y2="2048" x1="2912" />
            <wire x2="2912" y1="2048" y2="2048" x1="2816" />
        </branch>
        <instance x="240" y="1696" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_97">
            <wire x2="192" y1="1088" y2="1344" x1="192" />
            <wire x2="240" y1="1344" y2="1344" x1="192" />
            <wire x2="192" y1="1344" y2="1904" x1="192" />
            <wire x2="192" y1="1904" y2="2624" x1="192" />
            <wire x2="240" y1="2624" y2="2624" x1="192" />
            <wire x2="208" y1="1904" y2="1904" x1="192" />
            <wire x2="208" y1="1904" y2="2048" x1="208" />
            <wire x2="240" y1="2048" y2="2048" x1="208" />
            <wire x2="912" y1="1088" y2="1088" x1="192" />
            <wire x2="912" y1="1088" y2="1472" x1="912" />
            <wire x2="1536" y1="1472" y2="1472" x1="912" />
            <wire x2="1856" y1="1472" y2="1472" x1="1536" />
            <wire x2="1536" y1="1472" y2="2048" x1="1536" />
            <wire x2="2320" y1="2048" y2="2048" x1="1536" />
            <wire x2="1264" y1="1088" y2="1088" x1="912" />
            <wire x2="944" y1="560" y2="560" x1="896" />
            <wire x2="944" y1="560" y2="592" x1="944" />
            <wire x2="992" y1="592" y2="592" x1="944" />
            <wire x2="944" y1="544" y2="544" x1="912" />
            <wire x2="944" y1="544" y2="560" x1="944" />
            <wire x2="912" y1="544" y2="1088" x1="912" />
            <wire x2="992" y1="528" y2="528" x1="944" />
            <wire x2="944" y1="528" y2="544" x1="944" />
            <wire x2="2560" y1="192" y2="192" x1="1856" />
            <wire x2="1856" y1="192" y2="912" x1="1856" />
            <wire x2="1856" y1="912" y2="1472" x1="1856" />
            <wire x2="2176" y1="912" y2="912" x1="1856" />
        </branch>
        <instance x="240" y="2848" name="XLXI_33" orien="R0">
        </instance>
        <instance x="240" y="2272" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_99">
            <wire x2="240" y1="2112" y2="2112" x1="176" />
            <wire x2="176" y1="2112" y2="2352" x1="176" />
            <wire x2="912" y1="2352" y2="2352" x1="176" />
            <wire x2="912" y1="2352" y2="2880" x1="912" />
            <wire x2="912" y1="2880" y2="2880" x1="816" />
            <wire x2="912" y1="1728" y2="1728" x1="832" />
            <wire x2="912" y1="1728" y2="2352" x1="912" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="240" y1="2240" y2="2240" x1="160" />
            <wire x2="160" y1="2240" y2="2288" x1="160" />
            <wire x2="880" y1="2288" y2="2288" x1="160" />
            <wire x2="880" y1="2288" y2="2624" x1="880" />
            <wire x2="880" y1="2624" y2="2624" x1="816" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="240" y1="1536" y2="1536" x1="160" />
            <wire x2="160" y1="1536" y2="1840" x1="160" />
            <wire x2="688" y1="1840" y2="1840" x1="160" />
            <wire x2="688" y1="1840" y2="2048" x1="688" />
            <wire x2="160" y1="2528" y2="2688" x1="160" />
            <wire x2="240" y1="2688" y2="2688" x1="160" />
            <wire x2="640" y1="2528" y2="2528" x1="160" />
            <wire x2="640" y1="2048" y2="2048" x1="624" />
            <wire x2="688" y1="2048" y2="2048" x1="640" />
            <wire x2="640" y1="2048" y2="2528" x1="640" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="240" y1="2816" y2="2816" x1="176" />
            <wire x2="176" y1="2816" y2="2992" x1="176" />
            <wire x2="896" y1="2992" y2="2992" x1="176" />
            <wire x2="896" y1="1344" y2="1344" x1="832" />
            <wire x2="896" y1="1344" y2="2992" x1="896" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="240" y1="1440" y2="1440" x1="176" />
            <wire x2="176" y1="1440" y2="1824" x1="176" />
            <wire x2="864" y1="1824" y2="1824" x1="176" />
            <wire x2="864" y1="1824" y2="2688" x1="864" />
            <wire x2="864" y1="2688" y2="2688" x1="816" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="240" y1="1632" y2="1632" x1="224" />
            <wire x2="224" y1="1632" y2="1904" x1="224" />
            <wire x2="2832" y1="1904" y2="1904" x1="224" />
            <wire x2="2832" y1="1760" y2="1760" x1="2768" />
            <wire x2="2832" y1="1760" y2="1904" x1="2832" />
        </branch>
        <branch name="XLXN_106(11:0)">
            <wire x2="1504" y1="1600" y2="1600" x1="832" />
            <wire x2="1504" y1="1552" y2="1600" x1="1504" />
            <wire x2="2176" y1="1552" y2="1552" x1="1504" />
        </branch>
        <branch name="XLXN_107(11:0)">
            <wire x2="1504" y1="1664" y2="1664" x1="832" />
            <wire x2="1504" y1="1616" y2="1664" x1="1504" />
            <wire x2="2176" y1="1616" y2="1616" x1="1504" />
        </branch>
        <branch name="XLXN_108(7:0)">
            <wire x2="1504" y1="1408" y2="1408" x1="832" />
            <wire x2="1504" y1="1296" y2="1408" x1="1504" />
            <wire x2="2176" y1="1296" y2="1296" x1="1504" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="240" y1="2176" y2="2176" x1="208" />
            <wire x2="208" y1="2176" y2="2336" x1="208" />
            <wire x2="848" y1="2336" y2="2336" x1="208" />
            <wire x2="848" y1="2336" y2="2944" x1="848" />
            <wire x2="848" y1="2944" y2="2944" x1="816" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="1504" y1="1792" y2="1792" x1="832" />
            <wire x2="1504" y1="1760" y2="1792" x1="1504" />
            <wire x2="2176" y1="1760" y2="1760" x1="1504" />
        </branch>
    </sheet>
</drawing>