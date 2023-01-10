<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clkd(31:0)" />
        <signal name="clkd(18:17)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(7)" />
        <signal name="Segment(6)" />
        <signal name="Segment(5)" />
        <signal name="Segment(4)" />
        <signal name="Segment(3)" />
        <signal name="Segment(2)" />
        <signal name="Segment(1)" />
        <signal name="Segment(0)" />
        <signal name="HEX(3:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="HEX(3)" />
        <signal name="HEX(2)" />
        <signal name="HEX(1)" />
        <signal name="HEX(0)" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <blockdef name="clkdiv">
            <timestamp>2021-10-28T11:57:16</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2021-10-28T12:5:57</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2021-10-21T11:15:12</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_2">
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_16" name="p" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="XLXN_15" name="LE" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="LE" />
            <blockpin signalname="XLXN_16" name="point" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="Segment(7)" name="p" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(0)" name="a" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <instance x="528" y="496" name="XLXI_1" orien="R0">
        </instance>
        <instance x="528" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1664" y="880" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clkd(31:0)">
            <wire x2="992" y1="848" y2="848" x1="336" />
            <wire x2="336" y1="848" y2="944" x1="336" />
            <wire x2="336" y1="944" y2="976" x1="336" />
            <wire x2="992" y1="400" y2="400" x1="912" />
            <wire x2="992" y1="400" y2="848" x1="992" />
        </branch>
        <bustap x2="432" y1="944" y2="944" x1="336" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="456" y="944" type="branch" />
            <wire x2="528" y1="944" y2="944" x1="432" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="528" y1="1008" y2="1008" x1="224" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="528" y1="1072" y2="1072" x1="224" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="528" y1="1136" y2="1136" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1008" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="1072" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="1136" name="LES(3:0)" orien="R180" />
        <branch name="AN(3:0)">
            <wire x2="2448" y1="1136" y2="1136" x1="912" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1136" name="AN(3:0)" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1280" y1="1200" y2="1200" x1="912" />
            <wire x2="1280" y1="400" y2="1200" x1="1280" />
            <wire x2="1664" y1="400" y2="400" x1="1280" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1264" y1="1008" y2="1008" x1="912" />
            <wire x2="1664" y1="480" y2="480" x1="1264" />
            <wire x2="1264" y1="480" y2="1008" x1="1264" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2240" y1="320" y2="400" x1="2240" />
            <wire x2="2240" y1="400" y2="464" x1="2240" />
            <wire x2="2240" y1="464" y2="528" x1="2240" />
            <wire x2="2240" y1="528" y2="592" x1="2240" />
            <wire x2="2240" y1="592" y2="656" x1="2240" />
            <wire x2="2240" y1="656" y2="720" x1="2240" />
            <wire x2="2240" y1="720" y2="784" x1="2240" />
            <wire x2="2240" y1="784" y2="848" x1="2240" />
            <wire x2="2240" y1="848" y2="880" x1="2240" />
            <wire x2="2464" y1="880" y2="880" x1="2240" />
        </branch>
        <bustap x2="2144" y1="400" y2="400" x1="2240" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="400" type="branch" />
            <wire x2="2096" y1="400" y2="400" x1="2048" />
            <wire x2="2128" y1="400" y2="400" x1="2096" />
            <wire x2="2144" y1="400" y2="400" x1="2128" />
        </branch>
        <bustap x2="2144" y1="464" y2="464" x1="2240" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="464" type="branch" />
            <wire x2="2096" y1="464" y2="464" x1="2048" />
            <wire x2="2128" y1="464" y2="464" x1="2096" />
            <wire x2="2144" y1="464" y2="464" x1="2128" />
        </branch>
        <bustap x2="2144" y1="528" y2="528" x1="2240" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="528" type="branch" />
            <wire x2="2096" y1="528" y2="528" x1="2048" />
            <wire x2="2128" y1="528" y2="528" x1="2096" />
            <wire x2="2144" y1="528" y2="528" x1="2128" />
        </branch>
        <bustap x2="2144" y1="592" y2="592" x1="2240" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="592" type="branch" />
            <wire x2="2096" y1="592" y2="592" x1="2048" />
            <wire x2="2128" y1="592" y2="592" x1="2096" />
            <wire x2="2144" y1="592" y2="592" x1="2128" />
        </branch>
        <bustap x2="2144" y1="656" y2="656" x1="2240" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="656" type="branch" />
            <wire x2="2096" y1="656" y2="656" x1="2048" />
            <wire x2="2128" y1="656" y2="656" x1="2096" />
            <wire x2="2144" y1="656" y2="656" x1="2128" />
        </branch>
        <bustap x2="2144" y1="720" y2="720" x1="2240" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="720" type="branch" />
            <wire x2="2096" y1="720" y2="720" x1="2048" />
            <wire x2="2128" y1="720" y2="720" x1="2096" />
            <wire x2="2144" y1="720" y2="720" x1="2128" />
        </branch>
        <bustap x2="2144" y1="784" y2="784" x1="2240" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="784" type="branch" />
            <wire x2="2096" y1="784" y2="784" x1="2048" />
            <wire x2="2128" y1="784" y2="784" x1="2096" />
            <wire x2="2144" y1="784" y2="784" x1="2128" />
        </branch>
        <bustap x2="2144" y1="848" y2="848" x1="2240" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="848" type="branch" />
            <wire x2="2096" y1="848" y2="848" x1="2048" />
            <wire x2="2128" y1="848" y2="848" x1="2096" />
            <wire x2="2144" y1="848" y2="848" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2464" y="880" name="Segment(7:0)" orien="R0" />
        <branch name="HEX(3:0)">
            <wire x2="992" y1="944" y2="944" x1="912" />
            <wire x2="1440" y1="944" y2="944" x1="992" />
            <wire x2="1440" y1="512" y2="560" x1="1440" />
            <wire x2="1440" y1="560" y2="640" x1="1440" />
            <wire x2="1440" y1="640" y2="720" x1="1440" />
            <wire x2="1440" y1="720" y2="800" x1="1440" />
            <wire x2="1440" y1="800" y2="944" x1="1440" />
        </branch>
        <branch name="clk">
            <wire x2="528" y1="400" y2="400" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="400" name="clk" orien="R180" />
        <branch name="rst">
            <wire x2="528" y1="464" y2="464" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="464" name="rst" orien="R180" />
        <bustap x2="1536" y1="800" y2="800" x1="1440" />
        <branch name="HEX(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="800" type="branch" />
            <wire x2="1584" y1="800" y2="800" x1="1536" />
            <wire x2="1632" y1="800" y2="800" x1="1584" />
            <wire x2="1664" y1="800" y2="800" x1="1632" />
        </branch>
        <bustap x2="1536" y1="720" y2="720" x1="1440" />
        <branch name="HEX(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="720" type="branch" />
            <wire x2="1584" y1="720" y2="720" x1="1536" />
            <wire x2="1632" y1="720" y2="720" x1="1584" />
            <wire x2="1664" y1="720" y2="720" x1="1632" />
        </branch>
        <bustap x2="1536" y1="640" y2="640" x1="1440" />
        <branch name="HEX(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="640" type="branch" />
            <wire x2="1584" y1="640" y2="640" x1="1536" />
            <wire x2="1632" y1="640" y2="640" x1="1584" />
            <wire x2="1664" y1="640" y2="640" x1="1632" />
        </branch>
        <bustap x2="1536" y1="560" y2="560" x1="1440" />
        <branch name="HEX(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="560" type="branch" />
            <wire x2="1584" y1="560" y2="560" x1="1536" />
            <wire x2="1632" y1="560" y2="560" x1="1584" />
            <wire x2="1664" y1="560" y2="560" x1="1632" />
        </branch>
    </sheet>
</drawing>