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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_14" />
        <signal name="XLXN_19" />
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
            <blockpin signalname="XLXN_14" name="O" />
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
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
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
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="LED(6)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="LED(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="LED(4)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="LED(3)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="LED(2)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="LED(1)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_21">
            <blockpin signalname="LED(0)" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="784" name="XLXI_1" orien="R0" />
        <branch name="S1">
            <wire x2="848" y1="752" y2="752" x1="672" />
            <wire x2="864" y1="752" y2="752" x1="848" />
            <wire x2="848" y1="480" y2="752" x1="848" />
            <wire x2="1136" y1="480" y2="480" x1="848" />
            <wire x2="2240" y1="480" y2="480" x1="1136" />
            <wire x2="1136" y1="480" y2="1904" x1="1136" />
            <wire x2="2176" y1="1904" y2="1904" x1="1136" />
        </branch>
        <instance x="880" y="1232" name="XLXI_2" orien="R0" />
        <instance x="864" y="1760" name="XLXI_3" orien="R0" />
        <instance x="2240" y="672" name="XLXI_4" orien="R0" />
        <instance x="2208" y="1072" name="XLXI_5" orien="R0" />
        <instance x="2192" y="1568" name="XLXI_6" orien="R0" />
        <instance x="2176" y="2096" name="XLXI_7" orien="R0" />
        <branch name="S2">
            <wire x2="816" y1="1200" y2="1200" x1="672" />
            <wire x2="864" y1="1200" y2="1200" x1="816" />
            <wire x2="880" y1="1200" y2="1200" x1="864" />
            <wire x2="816" y1="944" y2="1200" x1="816" />
            <wire x2="1184" y1="944" y2="944" x1="816" />
            <wire x2="2208" y1="944" y2="944" x1="1184" />
            <wire x2="1184" y1="944" y2="1968" x1="1184" />
            <wire x2="2176" y1="1968" y2="1968" x1="1184" />
        </branch>
        <branch name="S3">
            <wire x2="784" y1="1728" y2="1728" x1="672" />
            <wire x2="848" y1="1728" y2="1728" x1="784" />
            <wire x2="864" y1="1728" y2="1728" x1="848" />
            <wire x2="784" y1="1504" y2="1728" x1="784" />
            <wire x2="1248" y1="1504" y2="1504" x1="784" />
            <wire x2="2192" y1="1504" y2="1504" x1="1248" />
            <wire x2="1248" y1="1504" y2="2032" x1="1248" />
            <wire x2="2176" y1="2032" y2="2032" x1="1248" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1648" y1="1728" y2="1728" x1="1088" />
            <wire x2="1648" y1="1008" y2="1728" x1="1648" />
            <wire x2="1664" y1="1008" y2="1008" x1="1648" />
            <wire x2="2208" y1="1008" y2="1008" x1="1664" />
            <wire x2="2240" y1="608" y2="608" x1="1664" />
            <wire x2="1664" y1="608" y2="1008" x1="1664" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1968" y1="752" y2="752" x1="1088" />
            <wire x2="2208" y1="752" y2="752" x1="1968" />
            <wire x2="2208" y1="752" y2="880" x1="2208" />
            <wire x2="1968" y1="752" y2="1376" x1="1968" />
            <wire x2="2192" y1="1376" y2="1376" x1="1968" />
        </branch>
        <instance x="2752" y="1344" name="XLXI_8" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2752" y1="544" y2="544" x1="2496" />
            <wire x2="2752" y1="544" y2="1088" x1="2752" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2608" y1="944" y2="944" x1="2464" />
            <wire x2="2608" y1="944" y2="1152" x1="2608" />
            <wire x2="2752" y1="1152" y2="1152" x1="2608" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1424" y1="1200" y2="1200" x1="1104" />
            <wire x2="1632" y1="1200" y2="1200" x1="1424" />
            <wire x2="1424" y1="1200" y2="1440" x1="1424" />
            <wire x2="2192" y1="1440" y2="1440" x1="1424" />
            <wire x2="1632" y1="544" y2="1200" x1="1632" />
            <wire x2="2240" y1="544" y2="544" x1="1632" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2592" y1="1440" y2="1440" x1="2448" />
            <wire x2="2592" y1="1216" y2="1440" x1="2592" />
            <wire x2="2752" y1="1216" y2="1216" x1="2592" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2752" y1="1968" y2="1968" x1="2432" />
            <wire x2="2752" y1="1280" y2="1968" x1="2752" />
        </branch>
        <branch name="F">
            <wire x2="3040" y1="1184" y2="1184" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="672" y="752" name="S1" orien="R180" />
        <iomarker fontsize="28" x="672" y="1200" name="S2" orien="R180" />
        <iomarker fontsize="28" x="672" y="1728" name="S3" orien="R180" />
        <iomarker fontsize="28" x="3040" y="1184" name="F" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="784" y1="2352" y2="2352" x1="656" />
            <wire x2="832" y1="2352" y2="2352" x1="784" />
            <wire x2="912" y1="2352" y2="2352" x1="832" />
            <wire x2="960" y1="2352" y2="2352" x1="912" />
            <wire x2="1024" y1="2352" y2="2352" x1="960" />
            <wire x2="1088" y1="2352" y2="2352" x1="1024" />
            <wire x2="1136" y1="2352" y2="2352" x1="1088" />
            <wire x2="1200" y1="2352" y2="2352" x1="1136" />
            <wire x2="1232" y1="2352" y2="2352" x1="1200" />
            <wire x2="1264" y1="2352" y2="2352" x1="1232" />
            <wire x2="1344" y1="2352" y2="2352" x1="1264" />
            <wire x2="1360" y1="2352" y2="2352" x1="1344" />
            <wire x2="1424" y1="2352" y2="2352" x1="1360" />
            <wire x2="1472" y1="2352" y2="2352" x1="1424" />
            <wire x2="2384" y1="2352" y2="2352" x1="1472" />
            <wire x2="2384" y1="2336" y2="2352" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2384" y="2336" name="LED(6:0)" orien="R270" />
        <bustap x2="784" y1="2352" y2="2256" x1="784" />
        <branch name="LED(6)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2168" type="branch" />
            <wire x2="784" y1="2080" y2="2168" x1="784" />
            <wire x2="784" y1="2168" y2="2256" x1="784" />
        </branch>
        <bustap x2="912" y1="2352" y2="2256" x1="912" />
        <branch name="LED(5)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="2216" type="branch" />
            <wire x2="912" y1="2176" y2="2216" x1="912" />
            <wire x2="912" y1="2216" y2="2256" x1="912" />
        </branch>
        <bustap x2="1024" y1="2352" y2="2256" x1="1024" />
        <branch name="LED(4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2200" type="branch" />
            <wire x2="1024" y1="2144" y2="2200" x1="1024" />
            <wire x2="1024" y1="2200" y2="2256" x1="1024" />
        </branch>
        <instance x="720" y="2080" name="XLXI_12" orien="R0" />
        <instance x="848" y="2176" name="XLXI_14" orien="R0" />
        <instance x="960" y="2144" name="XLXI_16" orien="R0" />
        <bustap x2="1136" y1="2352" y2="2256" x1="1136" />
        <branch name="LED(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2168" type="branch" />
            <wire x2="1136" y1="2080" y2="2168" x1="1136" />
            <wire x2="1136" y1="2168" y2="2256" x1="1136" />
        </branch>
        <bustap x2="1264" y1="2352" y2="2256" x1="1264" />
        <branch name="LED(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2176" type="branch" />
            <wire x2="1264" y1="2096" y2="2112" x1="1264" />
            <wire x2="1264" y1="2112" y2="2176" x1="1264" />
            <wire x2="1264" y1="2176" y2="2256" x1="1264" />
        </branch>
        <bustap x2="1360" y1="2352" y2="2256" x1="1360" />
        <branch name="LED(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="2192" type="branch" />
            <wire x2="1360" y1="2128" y2="2192" x1="1360" />
            <wire x2="1360" y1="2192" y2="2256" x1="1360" />
        </branch>
        <bustap x2="1472" y1="2352" y2="2256" x1="1472" />
        <branch name="LED(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="2192" type="branch" />
            <wire x2="1472" y1="2128" y2="2192" x1="1472" />
            <wire x2="1472" y1="2192" y2="2256" x1="1472" />
        </branch>
        <instance x="1072" y="2080" name="XLXI_17" orien="R0" />
        <instance x="1200" y="2096" name="XLXI_19" orien="R0" />
        <instance x="1296" y="2128" name="XLXI_20" orien="R0" />
        <instance x="1408" y="2128" name="XLXI_21" orien="R0" />
    </sheet>
</drawing>