<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="RST" />
        <signal name="clkd(31:0)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="clkd(18:17)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="HEX(3:0)" />
        <signal name="HEX(3)" />
        <signal name="HEX(2)" />
        <signal name="HEX(1)" />
        <signal name="HEX(0)" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(7)" />
        <signal name="Segment(6)" />
        <signal name="Segment(5)" />
        <signal name="Segment(4)" />
        <signal name="Segment(3)" />
        <signal name="Segment(2)" />
        <signal name="Segment(1)" />
        <signal name="Segment(0)" />
        <signal name="AN(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="clkdiv">
            <timestamp>2017-11-11T12:32:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2017-11-6T7:32:8</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
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
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2016-11-7T23:0:18</timestamp>
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
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_2">
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_12" name="P" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="XLXN_12" name="point" />
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
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="704" y="816" name="XLXI_1" orien="R0">
        </instance>
        <instance x="704" y="1344" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1600" y="1024" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="704" y1="720" y2="720" x1="480" />
        </branch>
        <branch name="RST">
            <wire x2="704" y1="784" y2="784" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="720" name="clk" orien="R180" />
        <iomarker fontsize="28" x="480" y="784" name="RST" orien="R180" />
        <branch name="clkd(31:0)">
            <wire x2="640" y1="976" y2="976" x1="528" />
            <wire x2="1264" y1="976" y2="976" x1="640" />
            <wire x2="528" y1="976" y2="1120" x1="528" />
            <wire x2="1264" y1="720" y2="720" x1="1088" />
            <wire x2="1264" y1="720" y2="960" x1="1264" />
            <wire x2="1264" y1="960" y2="976" x1="1264" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="704" y1="1184" y2="1184" x1="320" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="704" y1="1248" y2="1248" x1="320" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="704" y1="1312" y2="1312" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1184" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="1248" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="1312" name="LES(3:0)" orien="R180" />
        <bustap x2="624" y1="1120" y2="1120" x1="528" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1120" type="branch" />
            <wire x2="640" y1="1120" y2="1120" x1="624" />
            <wire x2="656" y1="1120" y2="1120" x1="640" />
            <wire x2="704" y1="1120" y2="1120" x1="656" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1344" y1="1248" y2="1248" x1="1088" />
            <wire x2="1344" y1="864" y2="1248" x1="1344" />
            <wire x2="1600" y1="864" y2="864" x1="1344" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1328" y1="1184" y2="1184" x1="1088" />
            <wire x2="1328" y1="944" y2="1184" x1="1328" />
            <wire x2="1600" y1="944" y2="944" x1="1328" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1424" y1="1120" y2="1120" x1="1088" />
            <wire x2="1424" y1="560" y2="624" x1="1424" />
            <wire x2="1424" y1="624" y2="704" x1="1424" />
            <wire x2="1424" y1="704" y2="784" x1="1424" />
            <wire x2="1424" y1="784" y2="800" x1="1424" />
            <wire x2="1424" y1="800" y2="1120" x1="1424" />
        </branch>
        <bustap x2="1520" y1="784" y2="784" x1="1424" />
        <branch name="HEX(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="784" type="branch" />
            <wire x2="1552" y1="784" y2="784" x1="1520" />
            <wire x2="1584" y1="784" y2="784" x1="1552" />
            <wire x2="1600" y1="784" y2="784" x1="1584" />
        </branch>
        <bustap x2="1520" y1="704" y2="704" x1="1424" />
        <branch name="HEX(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1544" y="704" type="branch" />
            <wire x2="1552" y1="704" y2="704" x1="1520" />
            <wire x2="1568" y1="704" y2="704" x1="1552" />
            <wire x2="1600" y1="704" y2="704" x1="1568" />
        </branch>
        <bustap x2="1520" y1="624" y2="624" x1="1424" />
        <branch name="HEX(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="624" type="branch" />
            <wire x2="1552" y1="624" y2="624" x1="1520" />
            <wire x2="1584" y1="624" y2="624" x1="1552" />
            <wire x2="1600" y1="624" y2="624" x1="1584" />
        </branch>
        <bustap x2="1520" y1="560" y2="560" x1="1424" />
        <branch name="HEX(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="560" type="branch" />
            <wire x2="1552" y1="560" y2="560" x1="1520" />
            <wire x2="1584" y1="560" y2="560" x1="1552" />
            <wire x2="1600" y1="544" y2="544" x1="1584" />
            <wire x2="1584" y1="544" y2="560" x1="1584" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2288" y1="544" y2="608" x1="2288" />
            <wire x2="2288" y1="608" y2="672" x1="2288" />
            <wire x2="2288" y1="672" y2="736" x1="2288" />
            <wire x2="2288" y1="736" y2="800" x1="2288" />
            <wire x2="2288" y1="800" y2="864" x1="2288" />
            <wire x2="2288" y1="864" y2="944" x1="2288" />
            <wire x2="2288" y1="944" y2="1008" x1="2288" />
            <wire x2="2288" y1="1008" y2="1168" x1="2288" />
            <wire x2="2560" y1="1168" y2="1168" x1="2288" />
            <wire x2="2560" y1="1168" y2="1184" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1184" name="Segment(7:0)" orien="R90" />
        <bustap x2="2192" y1="544" y2="544" x1="2288" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2168" y="544" type="branch" />
            <wire x2="2144" y1="544" y2="544" x1="1984" />
            <wire x2="2176" y1="544" y2="544" x1="2144" />
            <wire x2="2192" y1="544" y2="544" x1="2176" />
        </branch>
        <bustap x2="2192" y1="608" y2="608" x1="2288" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2168" y="608" type="branch" />
            <wire x2="2144" y1="608" y2="608" x1="1984" />
            <wire x2="2176" y1="608" y2="608" x1="2144" />
            <wire x2="2192" y1="608" y2="608" x1="2176" />
        </branch>
        <bustap x2="2192" y1="672" y2="672" x1="2288" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="672" type="branch" />
            <wire x2="2128" y1="672" y2="672" x1="1984" />
            <wire x2="2160" y1="672" y2="672" x1="2128" />
            <wire x2="2192" y1="672" y2="672" x1="2160" />
        </branch>
        <bustap x2="2192" y1="736" y2="736" x1="2288" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2152" y="736" type="branch" />
            <wire x2="2112" y1="736" y2="736" x1="1984" />
            <wire x2="2160" y1="736" y2="736" x1="2112" />
            <wire x2="2192" y1="736" y2="736" x1="2160" />
        </branch>
        <bustap x2="2192" y1="800" y2="800" x1="2288" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="800" type="branch" />
            <wire x2="2128" y1="800" y2="800" x1="1984" />
            <wire x2="2160" y1="800" y2="800" x1="2128" />
            <wire x2="2192" y1="800" y2="800" x1="2160" />
        </branch>
        <bustap x2="2192" y1="864" y2="864" x1="2288" />
        <bustap x2="2192" y1="944" y2="944" x1="2288" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="944" type="branch" />
            <wire x2="2128" y1="928" y2="928" x1="1984" />
            <wire x2="2128" y1="928" y2="944" x1="2128" />
            <wire x2="2160" y1="944" y2="944" x1="2128" />
            <wire x2="2192" y1="944" y2="944" x1="2160" />
        </branch>
        <bustap x2="2192" y1="1008" y2="1008" x1="2288" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1008" type="branch" />
            <wire x2="2096" y1="992" y2="992" x1="1984" />
            <wire x2="2096" y1="992" y2="1008" x1="2096" />
            <wire x2="2144" y1="1008" y2="1008" x1="2096" />
            <wire x2="2192" y1="1008" y2="1008" x1="2144" />
        </branch>
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2152" y="864" type="branch" />
            <wire x2="2112" y1="864" y2="864" x1="1984" />
            <wire x2="2128" y1="864" y2="864" x1="2112" />
            <wire x2="2160" y1="864" y2="864" x1="2128" />
            <wire x2="2192" y1="864" y2="864" x1="2160" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1984" y1="1312" y2="1312" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1312" name="AN(3:0)" orien="R0" />
    </sheet>
</drawing>