<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="HEX(3:0)" />
        <signal name="point(3:0)" />
        <signal name="point(3)" />
        <signal name="point(2)" />
        <signal name="point(1)" />
        <signal name="point(0)" />
        <signal name="P" />
        <signal name="LE" />
        <signal name="LES(3:0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="Scan(1)" />
        <signal name="Scan(0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Output" name="P" />
        <port polarity="Output" name="LE" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to1b4">
            <timestamp>2017-11-6T6:40:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1">
            <timestamp>2017-11-6T7:19:20</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="Mux4to1b4" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_4">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="point(0)" name="I0" />
            <blockpin signalname="point(1)" name="I1" />
            <blockpin signalname="point(2)" name="I2" />
            <blockpin signalname="point(3)" name="I3" />
            <blockpin signalname="P" name="o" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_5">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="d2_4e" name="XLXI_6">
            <blockpin signalname="Scan(0)" name="A0" />
            <blockpin signalname="Scan(1)" name="A1" />
            <blockpin signalname="XLXN_48" name="E" />
            <blockpin signalname="XLXN_49" name="D0" />
            <blockpin signalname="XLXN_50" name="D1" />
            <blockpin signalname="XLXN_51" name="D2" />
            <blockpin signalname="XLXN_52" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_48" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="XLXN_49" name="I" />
            <blockpin signalname="AN(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_50" name="I" />
            <blockpin signalname="AN(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="XLXN_51" name="I" />
            <blockpin signalname="AN(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="AN(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="736" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="656" y="176" name="Scan(1:0)" orien="R180" />
        <branch name="Scan(1:0)">
            <wire x2="1184" y1="176" y2="176" x1="656" />
            <wire x2="1184" y1="176" y2="448" x1="1184" />
            <wire x2="1584" y1="448" y2="448" x1="1184" />
            <wire x2="1184" y1="448" y2="928" x1="1184" />
            <wire x2="1360" y1="928" y2="928" x1="1184" />
            <wire x2="1184" y1="928" y2="1408" x1="1184" />
            <wire x2="1344" y1="1408" y2="1408" x1="1184" />
            <wire x2="1184" y1="1408" y2="2000" x1="1184" />
            <wire x2="1184" y1="2000" y2="2176" x1="1184" />
        </branch>
        <branch name="Hexs(15:0)">
            <wire x2="720" y1="576" y2="576" x1="496" />
            <wire x2="720" y1="576" y2="640" x1="720" />
            <wire x2="720" y1="640" y2="688" x1="720" />
            <wire x2="720" y1="496" y2="560" x1="720" />
            <wire x2="720" y1="560" y2="576" x1="720" />
        </branch>
        <iomarker fontsize="28" x="496" y="576" name="Hexs(15:0)" orien="R180" />
        <bustap x2="816" y1="496" y2="496" x1="720" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="840" y="496" type="branch" />
            <wire x2="864" y1="496" y2="496" x1="816" />
            <wire x2="864" y1="496" y2="512" x1="864" />
            <wire x2="1584" y1="512" y2="512" x1="864" />
        </branch>
        <bustap x2="816" y1="560" y2="560" x1="720" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="560" type="branch" />
            <wire x2="848" y1="560" y2="560" x1="816" />
            <wire x2="1104" y1="560" y2="560" x1="848" />
            <wire x2="1104" y1="560" y2="640" x1="1104" />
            <wire x2="1584" y1="640" y2="640" x1="1104" />
        </branch>
        <bustap x2="816" y1="640" y2="640" x1="720" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="840" y="640" type="branch" />
            <wire x2="976" y1="640" y2="640" x1="816" />
            <wire x2="976" y1="640" y2="704" x1="976" />
            <wire x2="1584" y1="704" y2="704" x1="976" />
        </branch>
        <bustap x2="816" y1="688" y2="688" x1="720" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="840" y="688" type="branch" />
            <wire x2="1296" y1="688" y2="688" x1="816" />
            <wire x2="1584" y1="576" y2="576" x1="1296" />
            <wire x2="1296" y1="576" y2="688" x1="1296" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="2224" y1="448" y2="448" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2224" y="448" name="HEX(3:0)" orien="R0" />
        <instance x="1360" y="1216" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1344" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="496" y="1008" name="point(3:0)" orien="R180" />
        <branch name="point(3:0)">
            <wire x2="720" y1="1008" y2="1008" x1="496" />
            <wire x2="720" y1="1008" y2="1024" x1="720" />
            <wire x2="720" y1="1024" y2="1104" x1="720" />
            <wire x2="720" y1="1104" y2="1152" x1="720" />
            <wire x2="720" y1="960" y2="1008" x1="720" />
        </branch>
        <bustap x2="816" y1="1152" y2="1152" x1="720" />
        <branch name="point(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1152" type="branch" />
            <wire x2="832" y1="1152" y2="1152" x1="816" />
            <wire x2="848" y1="1152" y2="1152" x1="832" />
            <wire x2="848" y1="1152" y2="1184" x1="848" />
            <wire x2="1360" y1="1184" y2="1184" x1="848" />
        </branch>
        <bustap x2="816" y1="1104" y2="1104" x1="720" />
        <branch name="point(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1104" type="branch" />
            <wire x2="848" y1="1104" y2="1104" x1="816" />
            <wire x2="880" y1="1104" y2="1104" x1="848" />
            <wire x2="880" y1="1104" y2="1120" x1="880" />
            <wire x2="1360" y1="1120" y2="1120" x1="880" />
        </branch>
        <bustap x2="816" y1="1024" y2="1024" x1="720" />
        <branch name="point(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1024" type="branch" />
            <wire x2="832" y1="1024" y2="1024" x1="816" />
            <wire x2="848" y1="1024" y2="1024" x1="832" />
            <wire x2="848" y1="1024" y2="1056" x1="848" />
            <wire x2="1360" y1="1056" y2="1056" x1="848" />
        </branch>
        <bustap x2="816" y1="960" y2="960" x1="720" />
        <branch name="point(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="960" type="branch" />
            <wire x2="832" y1="960" y2="960" x1="816" />
            <wire x2="848" y1="960" y2="960" x1="832" />
            <wire x2="848" y1="960" y2="992" x1="848" />
            <wire x2="1360" y1="992" y2="992" x1="848" />
        </branch>
        <branch name="P">
            <wire x2="1872" y1="928" y2="928" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1872" y="928" name="P" orien="R0" />
        <branch name="LE">
            <wire x2="1856" y1="1408" y2="1408" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1408" name="LE" orien="R0" />
        <branch name="LES(3:0)">
            <wire x2="704" y1="1440" y2="1440" x1="416" />
            <wire x2="704" y1="1440" y2="1488" x1="704" />
            <wire x2="704" y1="1488" y2="1552" x1="704" />
            <wire x2="704" y1="1552" y2="1616" x1="704" />
            <wire x2="704" y1="1616" y2="1680" x1="704" />
        </branch>
        <iomarker fontsize="28" x="416" y="1440" name="LES(3:0)" orien="R180" />
        <bustap x2="800" y1="1680" y2="1680" x1="704" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1680" type="branch" />
            <wire x2="816" y1="1680" y2="1680" x1="800" />
            <wire x2="832" y1="1680" y2="1680" x1="816" />
            <wire x2="1344" y1="1664" y2="1664" x1="832" />
            <wire x2="832" y1="1664" y2="1680" x1="832" />
        </branch>
        <bustap x2="800" y1="1616" y2="1616" x1="704" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="824" y="1616" type="branch" />
            <wire x2="848" y1="1616" y2="1616" x1="800" />
            <wire x2="1344" y1="1600" y2="1600" x1="848" />
            <wire x2="848" y1="1600" y2="1616" x1="848" />
        </branch>
        <bustap x2="800" y1="1552" y2="1552" x1="704" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1552" type="branch" />
            <wire x2="816" y1="1552" y2="1552" x1="800" />
            <wire x2="832" y1="1552" y2="1552" x1="816" />
            <wire x2="1344" y1="1536" y2="1536" x1="832" />
            <wire x2="832" y1="1536" y2="1552" x1="832" />
        </branch>
        <bustap x2="800" y1="1488" y2="1488" x1="704" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1488" type="branch" />
            <wire x2="816" y1="1488" y2="1488" x1="800" />
            <wire x2="832" y1="1488" y2="1488" x1="816" />
            <wire x2="1344" y1="1472" y2="1472" x1="832" />
            <wire x2="832" y1="1472" y2="1488" x1="832" />
        </branch>
        <instance x="1360" y="2368" name="XLXI_6" orien="R0" />
        <bustap x2="1280" y1="2176" y2="2176" x1="1184" />
        <branch name="Scan(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1304" y="2176" type="branch" />
            <wire x2="1328" y1="2176" y2="2176" x1="1280" />
            <wire x2="1360" y1="2112" y2="2112" x1="1328" />
            <wire x2="1328" y1="2112" y2="2176" x1="1328" />
        </branch>
        <bustap x2="1280" y1="2000" y2="2000" x1="1184" />
        <branch name="Scan(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1304" y="2000" type="branch" />
            <wire x2="1328" y1="2000" y2="2000" x1="1280" />
            <wire x2="1328" y1="2000" y2="2048" x1="1328" />
            <wire x2="1360" y1="2048" y2="2048" x1="1328" />
        </branch>
        <instance x="1200" y="2288" name="XLXI_8" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="1264" y1="2288" y2="2304" x1="1264" />
            <wire x2="1328" y1="2304" y2="2304" x1="1264" />
            <wire x2="1360" y1="2240" y2="2240" x1="1328" />
            <wire x2="1328" y1="2240" y2="2304" x1="1328" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1904" y1="2048" y2="2048" x1="1744" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1904" y1="2112" y2="2112" x1="1744" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1904" y1="2176" y2="2176" x1="1744" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1904" y1="2240" y2="2240" x1="1744" />
        </branch>
        <instance x="1904" y="2080" name="XLXI_9" orien="R0" />
        <instance x="1904" y="2208" name="XLXI_11" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2576" y1="2032" y2="2112" x1="2576" />
            <wire x2="2576" y1="2112" y2="2176" x1="2576" />
            <wire x2="2576" y1="2176" y2="2240" x1="2576" />
            <wire x2="2576" y1="2240" y2="2320" x1="2576" />
            <wire x2="2752" y1="2320" y2="2320" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2752" y="2320" name="AN(3:0)" orien="R0" />
        <bustap x2="2480" y1="2240" y2="2240" x1="2576" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="2240" type="branch" />
            <wire x2="2432" y1="2240" y2="2240" x1="2128" />
            <wire x2="2480" y1="2240" y2="2240" x1="2432" />
        </branch>
        <bustap x2="2480" y1="2176" y2="2176" x1="2576" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="2176" type="branch" />
            <wire x2="2448" y1="2176" y2="2176" x1="2128" />
            <wire x2="2480" y1="2176" y2="2176" x1="2448" />
        </branch>
        <bustap x2="2480" y1="2112" y2="2112" x1="2576" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="2112" type="branch" />
            <wire x2="2464" y1="2112" y2="2112" x1="2128" />
            <wire x2="2480" y1="2112" y2="2112" x1="2464" />
        </branch>
        <bustap x2="2480" y1="2032" y2="2032" x1="2576" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="2048" type="branch" />
            <wire x2="2432" y1="2048" y2="2048" x1="2128" />
            <wire x2="2480" y1="2048" y2="2048" x1="2432" />
            <wire x2="2480" y1="2032" y2="2048" x1="2480" />
        </branch>
        <instance x="1904" y="2144" name="XLXI_10" orien="R0" />
        <instance x="1904" y="2272" name="XLXI_12" orien="R0" />
    </sheet>
</drawing>