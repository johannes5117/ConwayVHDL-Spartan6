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
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62(12:0)" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(12:0)" />
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
            <timestamp>2017-7-4T21:42:15</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="internal_ram">
            <timestamp>2017-7-9T22:47:44</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
        </blockdef>
        <blockdef name="Framebuffer">
            <timestamp>2017-7-10T21:47:1</timestamp>
            <rect width="464" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="592" y1="-480" y2="-480" x1="528" />
            <line x2="592" y1="-336" y2="-336" x1="528" />
            <rect width="64" x="528" y="-204" height="24" />
            <line x2="592" y1="-192" y2="-192" x1="528" />
            <rect width="64" x="528" y="-60" height="24" />
            <line x2="592" y1="-48" y2="-48" x1="528" />
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
            <blockpin signalname="sync_hor" name="sync_hor" />
            <blockpin signalname="sync_vert" name="sync_vert" />
            <blockpin signalname="red(7:0)" name="red(7:0)" />
            <blockpin signalname="blue(7:0)" name="blue(7:0)" />
            <blockpin signalname="green(7:0)" name="green(7:0)" />
        </block>
        <block symbolname="Framebuffer" name="XLXI_29">
            <blockpin signalname="XLXN_65" name="clk" />
            <blockpin name="vga_pixel_x" />
            <blockpin name="vga_pixel_y" />
            <blockpin name="vga_mutex" />
            <blockpin name="data_pixel_x" />
            <blockpin name="data_pixel_y" />
            <blockpin name="value_in(12:0)" />
            <blockpin signalname="XLXN_66(12:0)" name="ram_data_input(12:0)" />
            <blockpin signalname="XLXN_64" name="ram_address" />
            <blockpin signalname="XLXN_63" name="ram_we" />
            <blockpin name="value_out(12:0)" />
            <blockpin signalname="XLXN_62(12:0)" name="ram_data_output(12:0)" />
        </block>
        <block symbolname="internal_ram" name="XLXI_30">
            <blockpin signalname="XLXN_65" name="clk" />
            <blockpin signalname="XLXN_64" name="address" />
            <blockpin signalname="XLXN_63" name="we" />
            <blockpin signalname="XLXN_62(12:0)" name="data_input(12:0)" />
            <blockpin signalname="XLXN_66(12:0)" name="data_output(12:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="sync_hor">
            <wire x2="2960" y1="192" y2="192" x1="2944" />
            <wire x2="3472" y1="192" y2="192" x1="2960" />
        </branch>
        <branch name="sync_vert">
            <wire x2="2960" y1="256" y2="256" x1="2944" />
            <wire x2="3472" y1="256" y2="256" x1="2960" />
        </branch>
        <branch name="red(7:0)">
            <wire x2="2960" y1="320" y2="320" x1="2944" />
            <wire x2="3472" y1="320" y2="320" x1="2960" />
        </branch>
        <branch name="blue(7:0)">
            <wire x2="2960" y1="384" y2="384" x1="2944" />
            <wire x2="3472" y1="384" y2="384" x1="2960" />
        </branch>
        <branch name="green(7:0)">
            <wire x2="2960" y1="448" y2="448" x1="2944" />
            <wire x2="3472" y1="448" y2="448" x1="2960" />
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
        <instance x="2032" y="1424" name="XLXI_29" orien="R0">
        </instance>
        <instance x="2096" y="1792" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_62(12:0)">
            <wire x2="2096" y1="1760" y2="1760" x1="2016" />
            <wire x2="2016" y1="1760" y2="1872" x1="2016" />
            <wire x2="2704" y1="1872" y2="1872" x1="2016" />
            <wire x2="2704" y1="1376" y2="1376" x1="2624" />
            <wire x2="2704" y1="1376" y2="1872" x1="2704" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2096" y1="1696" y2="1696" x1="2032" />
            <wire x2="2032" y1="1696" y2="1856" x1="2032" />
            <wire x2="2688" y1="1856" y2="1856" x1="2032" />
            <wire x2="2688" y1="1088" y2="1088" x1="2624" />
            <wire x2="2688" y1="1088" y2="1856" x1="2688" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2032" y1="1456" y2="1632" x1="2032" />
            <wire x2="2096" y1="1632" y2="1632" x1="2032" />
            <wire x2="2672" y1="1456" y2="1456" x1="2032" />
            <wire x2="2672" y1="944" y2="944" x1="2624" />
            <wire x2="2672" y1="944" y2="1456" x1="2672" />
        </branch>
        <branch name="XLXN_66(12:0)">
            <wire x2="1984" y1="832" y2="1392" x1="1984" />
            <wire x2="2032" y1="1392" y2="1392" x1="1984" />
            <wire x2="2656" y1="832" y2="832" x1="1984" />
            <wire x2="2656" y1="832" y2="1568" x1="2656" />
            <wire x2="2656" y1="1568" y2="1568" x1="2592" />
        </branch>
        <instance x="2560" y="480" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="944" y1="560" y2="560" x1="896" />
            <wire x2="944" y1="560" y2="592" x1="944" />
            <wire x2="992" y1="592" y2="592" x1="944" />
            <wire x2="944" y1="544" y2="544" x1="912" />
            <wire x2="944" y1="544" y2="560" x1="944" />
            <wire x2="912" y1="544" y2="1472" x1="912" />
            <wire x2="1536" y1="1472" y2="1472" x1="912" />
            <wire x2="1968" y1="1472" y2="1472" x1="1536" />
            <wire x2="1536" y1="1472" y2="1568" x1="1536" />
            <wire x2="2096" y1="1568" y2="1568" x1="1536" />
            <wire x2="992" y1="528" y2="528" x1="944" />
            <wire x2="944" y1="528" y2="544" x1="944" />
            <wire x2="2560" y1="192" y2="192" x1="1968" />
            <wire x2="1968" y1="192" y2="944" x1="1968" />
            <wire x2="1968" y1="944" y2="1472" x1="1968" />
            <wire x2="2032" y1="944" y2="944" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="3472" y="192" name="sync_hor" orien="R0" />
        <iomarker fontsize="28" x="3472" y="256" name="sync_vert" orien="R0" />
        <iomarker fontsize="28" x="3472" y="320" name="red(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3472" y="384" name="blue(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3472" y="448" name="green(7:0)" orien="R0" />
    </sheet>
</drawing>