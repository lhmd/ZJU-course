<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="F" />
        <signal name="LED(6:0)" />
        <signal name="LED(6)" />
        <signal name="LED(5)" />
        <signal name="LED(4)" />
        <signal name="LED(3)" />
        <signal name="LED(2)" />
        <signal name="LED(1)" />
        <signal name="LED(0)" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="LED(6:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_8">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_7" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="LED(6)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="LED(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="LED(4)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="LED(3)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="LED(2)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="LED(1)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="LED(0)" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="800" name="XLXI_1" orien="R0" />
        <branch name="S1">
            <wire x2="912" y1="768" y2="768" x1="736" />
            <wire x2="928" y1="768" y2="768" x1="912" />
            <wire x2="912" y1="496" y2="768" x1="912" />
            <wire x2="1200" y1="496" y2="496" x1="912" />
            <wire x2="2304" y1="496" y2="496" x1="1200" />
            <wire x2="1200" y1="496" y2="1920" x1="1200" />
            <wire x2="2240" y1="1920" y2="1920" x1="1200" />
        </branch>
        <instance x="944" y="1248" name="XLXI_2" orien="R0" />
        <instance x="928" y="1776" name="XLXI_3" orien="R0" />
        <instance x="2304" y="688" name="XLXI_4" orien="R0" />
        <instance x="2272" y="1088" name="XLXI_5" orien="R0" />
        <instance x="2256" y="1584" name="XLXI_6" orien="R0" />
        <instance x="2240" y="2112" name="XLXI_7" orien="R0" />
        <branch name="S2">
            <wire x2="880" y1="1216" y2="1216" x1="736" />
            <wire x2="928" y1="1216" y2="1216" x1="880" />
            <wire x2="944" y1="1216" y2="1216" x1="928" />
            <wire x2="880" y1="960" y2="1216" x1="880" />
            <wire x2="1248" y1="960" y2="960" x1="880" />
            <wire x2="2272" y1="960" y2="960" x1="1248" />
            <wire x2="1248" y1="960" y2="1984" x1="1248" />
            <wire x2="2240" y1="1984" y2="1984" x1="1248" />
        </branch>
        <branch name="S3">
            <wire x2="848" y1="1744" y2="1744" x1="736" />
            <wire x2="912" y1="1744" y2="1744" x1="848" />
            <wire x2="928" y1="1744" y2="1744" x1="912" />
            <wire x2="848" y1="1520" y2="1744" x1="848" />
            <wire x2="1312" y1="1520" y2="1520" x1="848" />
            <wire x2="2256" y1="1520" y2="1520" x1="1312" />
            <wire x2="1312" y1="1520" y2="2048" x1="1312" />
            <wire x2="2240" y1="2048" y2="2048" x1="1312" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1712" y1="1744" y2="1744" x1="1152" />
            <wire x2="1712" y1="1024" y2="1744" x1="1712" />
            <wire x2="1728" y1="1024" y2="1024" x1="1712" />
            <wire x2="2272" y1="1024" y2="1024" x1="1728" />
            <wire x2="2304" y1="624" y2="624" x1="1728" />
            <wire x2="1728" y1="624" y2="1024" x1="1728" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2032" y1="768" y2="768" x1="1152" />
            <wire x2="2272" y1="768" y2="768" x1="2032" />
            <wire x2="2272" y1="768" y2="896" x1="2272" />
            <wire x2="2032" y1="768" y2="1392" x1="2032" />
            <wire x2="2256" y1="1392" y2="1392" x1="2032" />
        </branch>
        <instance x="2816" y="1360" name="XLXI_8" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2816" y1="560" y2="560" x1="2560" />
            <wire x2="2816" y1="560" y2="1104" x1="2816" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2672" y1="960" y2="960" x1="2528" />
            <wire x2="2672" y1="960" y2="1168" x1="2672" />
            <wire x2="2816" y1="1168" y2="1168" x1="2672" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1488" y1="1216" y2="1216" x1="1168" />
            <wire x2="1696" y1="1216" y2="1216" x1="1488" />
            <wire x2="1488" y1="1216" y2="1456" x1="1488" />
            <wire x2="2256" y1="1456" y2="1456" x1="1488" />
            <wire x2="1696" y1="560" y2="1216" x1="1696" />
            <wire x2="2304" y1="560" y2="560" x1="1696" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2656" y1="1456" y2="1456" x1="2512" />
            <wire x2="2656" y1="1232" y2="1456" x1="2656" />
            <wire x2="2816" y1="1232" y2="1232" x1="2656" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2816" y1="1984" y2="1984" x1="2496" />
            <wire x2="2816" y1="1296" y2="1984" x1="2816" />
        </branch>
        <branch name="F">
            <wire x2="3104" y1="1200" y2="1200" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="736" y="768" name="S1" orien="R180" />
        <iomarker fontsize="28" x="736" y="1216" name="S2" orien="R180" />
        <iomarker fontsize="28" x="736" y="1744" name="S3" orien="R180" />
        <iomarker fontsize="28" x="3104" y="1200" name="F" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="704" y1="2400" y2="2400" x1="576" />
            <wire x2="784" y1="2400" y2="2400" x1="704" />
            <wire x2="880" y1="2400" y2="2400" x1="784" />
            <wire x2="944" y1="2400" y2="2400" x1="880" />
            <wire x2="1056" y1="2400" y2="2400" x1="944" />
            <wire x2="1136" y1="2400" y2="2400" x1="1056" />
            <wire x2="1232" y1="2400" y2="2400" x1="1136" />
            <wire x2="2448" y1="2400" y2="2400" x1="1232" />
            <wire x2="2448" y1="2400" y2="2416" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2448" y="2416" name="LED(6:0)" orien="R90" />
        <bustap x2="704" y1="2400" y2="2304" x1="704" />
        <branch name="LED(6)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="2232" type="branch" />
            <wire x2="704" y1="2160" y2="2232" x1="704" />
            <wire x2="704" y1="2232" y2="2304" x1="704" />
        </branch>
        <bustap x2="784" y1="2400" y2="2304" x1="784" />
        <branch name="LED(5)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2224" type="branch" />
            <wire x2="784" y1="2144" y2="2224" x1="784" />
            <wire x2="784" y1="2224" y2="2304" x1="784" />
        </branch>
        <bustap x2="880" y1="2400" y2="2304" x1="880" />
        <branch name="LED(4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2240" type="branch" />
            <wire x2="880" y1="2176" y2="2192" x1="880" />
            <wire x2="880" y1="2192" y2="2240" x1="880" />
            <wire x2="880" y1="2240" y2="2304" x1="880" />
        </branch>
        <bustap x2="944" y1="2400" y2="2304" x1="944" />
        <branch name="LED(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="2224" type="branch" />
            <wire x2="944" y1="2144" y2="2160" x1="944" />
            <wire x2="944" y1="2160" y2="2224" x1="944" />
            <wire x2="944" y1="2224" y2="2304" x1="944" />
        </branch>
        <bustap x2="1056" y1="2400" y2="2304" x1="1056" />
        <branch name="LED(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2232" type="branch" />
            <wire x2="1056" y1="2160" y2="2176" x1="1056" />
            <wire x2="1056" y1="2176" y2="2232" x1="1056" />
            <wire x2="1056" y1="2232" y2="2304" x1="1056" />
        </branch>
        <bustap x2="1136" y1="2400" y2="2304" x1="1136" />
        <branch name="LED(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2216" type="branch" />
            <wire x2="1136" y1="2128" y2="2144" x1="1136" />
            <wire x2="1136" y1="2144" y2="2216" x1="1136" />
            <wire x2="1136" y1="2216" y2="2304" x1="1136" />
        </branch>
        <bustap x2="1232" y1="2400" y2="2304" x1="1232" />
        <branch name="LED(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2240" type="branch" />
            <wire x2="1232" y1="2176" y2="2240" x1="1232" />
            <wire x2="1232" y1="2240" y2="2304" x1="1232" />
        </branch>
        <instance x="640" y="2160" name="XLXI_9" orien="R0" />
        <instance x="720" y="2144" name="XLXI_10" orien="R0" />
        <instance x="816" y="2176" name="XLXI_12" orien="R0" />
        <instance x="880" y="2144" name="XLXI_14" orien="R0" />
        <instance x="992" y="2160" name="XLXI_16" orien="R0" />
        <instance x="1072" y="2128" name="XLXI_19" orien="R0" />
        <instance x="1168" y="2176" name="XLXI_20" orien="R0" />
    </sheet>
</drawing>