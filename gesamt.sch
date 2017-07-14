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
        <signal name="XLXN_65" />
        <signal name="XLXN_68(11:0)" />
        <signal name="XLXN_69(11:0)" />
        <signal name="XLXN_78(31:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_87" />
        <signal name="XLXN_90(11:0)" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92(7:0)" />
        <signal name="XLXN_93(11:0)" />
        <signal name="XLXN_94(7:0)" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_96(7:0)" />
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
        <blockdef name="grakatest">
            <timestamp>2017-7-12T18:53:45</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
            <blockpin signalname="XLXN_65" name="CLK_OUT1" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="XLXN_65" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_65" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_22">
            <blockpin signalname="XLXN_54" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_46" name="P" />
        </block>
        <block symbolname="VGA_Controller" name="XLXI_27">
            <blockpin signalname="XLXN_65" name="clk_108" />
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
            <blockpin signalname="XLXN_65" name="clk" />
            <blockpin signalname="XLXN_85" name="vga_mutex" />
            <blockpin signalname="XLXN_91" name="take_data" />
            <blockpin signalname="XLXN_69(11:0)" name="vga_pixel_x(11:0)" />
            <blockpin signalname="XLXN_68(11:0)" name="vga_pixel_y(11:0)" />
            <blockpin signalname="XLXN_92(7:0)" name="value_in(7:0)" />
            <blockpin signalname="XLXN_90(11:0)" name="data_pixel_x(11:0)" />
            <blockpin signalname="XLXN_93(11:0)" name="data_pixel_y(11:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="ram_data_input(7:0)" />
            <blockpin signalname="XLXN_87" name="writeable" />
            <blockpin signalname="XLXN_63" name="ram_we" />
            <blockpin signalname="XLXN_95(7:0)" name="value_out(7:0)" />
            <blockpin signalname="XLXN_78(31:0)" name="ram_address(31:0)" />
            <blockpin signalname="XLXN_94(7:0)" name="ram_data_output(7:0)" />
        </block>
        <block symbolname="internal_ram" name="XLXI_30">
            <blockpin signalname="XLXN_65" name="clk" />
            <blockpin signalname="XLXN_63" name="we" />
            <blockpin signalname="XLXN_78(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_94(7:0)" name="data_input(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="data_output(7:0)" />
        </block>
        <block symbolname="grakatest" name="XLXI_31">
            <blockpin signalname="XLXN_65" name="clk" />
            <blockpin signalname="XLXN_87" name="writeable" />
            <blockpin signalname="XLXN_91" name="take_data" />
            <blockpin signalname="XLXN_90(11:0)" name="data_pixel_x(11:0)" />
            <blockpin signalname="XLXN_93(11:0)" name="data_pixel_y(11:0)" />
            <blockpin signalname="XLXN_92(7:0)" name="value_out(7:0)" />
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
        <branch name="XLXN_65">
            <wire x2="944" y1="560" y2="560" x1="896" />
            <wire x2="944" y1="560" y2="592" x1="944" />
            <wire x2="992" y1="592" y2="592" x1="944" />
            <wire x2="944" y1="544" y2="544" x1="912" />
            <wire x2="944" y1="544" y2="560" x1="944" />
            <wire x2="912" y1="544" y2="1088" x1="912" />
            <wire x2="912" y1="1088" y2="1472" x1="912" />
            <wire x2="1536" y1="1472" y2="1472" x1="912" />
            <wire x2="1856" y1="1472" y2="1472" x1="1536" />
            <wire x2="1536" y1="1472" y2="2048" x1="1536" />
            <wire x2="2320" y1="2048" y2="2048" x1="1536" />
            <wire x2="1264" y1="1088" y2="1088" x1="912" />
            <wire x2="992" y1="528" y2="528" x1="944" />
            <wire x2="944" y1="528" y2="544" x1="944" />
            <wire x2="2560" y1="192" y2="192" x1="1856" />
            <wire x2="1856" y1="192" y2="912" x1="1856" />
            <wire x2="1856" y1="912" y2="1472" x1="1856" />
            <wire x2="2176" y1="912" y2="912" x1="1856" />
        </branch>
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
            <wire x2="2176" y1="848" y2="1104" x1="2176" />
            <wire x2="2976" y1="848" y2="848" x1="2176" />
            <wire x2="2976" y1="640" y2="640" x1="2944" />
            <wire x2="2976" y1="640" y2="848" x1="2976" />
        </branch>
        <instance x="1264" y="1312" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_87">
            <wire x2="1264" y1="1280" y2="1280" x1="1184" />
            <wire x2="1184" y1="1280" y2="1856" x1="1184" />
            <wire x2="2832" y1="1856" y2="1856" x1="1184" />
            <wire x2="2832" y1="1760" y2="1760" x1="2768" />
            <wire x2="2832" y1="1760" y2="1856" x1="2832" />
        </branch>
        <branch name="XLXN_90(11:0)">
            <wire x2="1904" y1="1152" y2="1152" x1="1696" />
            <wire x2="1904" y1="1152" y2="1552" x1="1904" />
            <wire x2="2176" y1="1552" y2="1552" x1="1904" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1888" y1="1088" y2="1088" x1="1696" />
            <wire x2="1888" y1="1088" y2="1760" x1="1888" />
            <wire x2="2176" y1="1760" y2="1760" x1="1888" />
        </branch>
        <branch name="XLXN_92(7:0)">
            <wire x2="1936" y1="1280" y2="1280" x1="1696" />
            <wire x2="1936" y1="1280" y2="1296" x1="1936" />
            <wire x2="2176" y1="1296" y2="1296" x1="1936" />
        </branch>
        <branch name="XLXN_93(11:0)">
            <wire x2="1920" y1="1216" y2="1216" x1="1696" />
            <wire x2="1920" y1="1216" y2="1616" x1="1920" />
            <wire x2="2176" y1="1616" y2="1616" x1="1920" />
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
    </sheet>
</drawing>