<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="XLXN_3" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="F" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
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
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_12" name="I0" />
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
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="624" name="XLXI_1" orien="R0" />
        <branch name="S1">
            <wire x2="720" y1="592" y2="592" x1="544" />
            <wire x2="736" y1="592" y2="592" x1="720" />
            <wire x2="720" y1="320" y2="592" x1="720" />
            <wire x2="1008" y1="320" y2="320" x1="720" />
            <wire x2="2112" y1="320" y2="320" x1="1008" />
            <wire x2="1008" y1="320" y2="1744" x1="1008" />
            <wire x2="2048" y1="1744" y2="1744" x1="1008" />
        </branch>
        <instance x="752" y="1072" name="XLXI_2" orien="R0" />
        <instance x="736" y="1600" name="XLXI_3" orien="R0" />
        <instance x="2112" y="512" name="XLXI_4" orien="R0" />
        <instance x="2080" y="912" name="XLXI_5" orien="R0" />
        <instance x="2064" y="1408" name="XLXI_6" orien="R0" />
        <instance x="2048" y="1936" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="544" y="592" name="S1" orien="R180" />
        <branch name="S2">
            <wire x2="688" y1="1040" y2="1040" x1="544" />
            <wire x2="736" y1="1040" y2="1040" x1="688" />
            <wire x2="752" y1="1040" y2="1040" x1="736" />
            <wire x2="688" y1="784" y2="1040" x1="688" />
            <wire x2="1056" y1="784" y2="784" x1="688" />
            <wire x2="2080" y1="784" y2="784" x1="1056" />
            <wire x2="1056" y1="784" y2="1808" x1="1056" />
            <wire x2="2048" y1="1808" y2="1808" x1="1056" />
        </branch>
        <branch name="S3">
            <wire x2="656" y1="1568" y2="1568" x1="544" />
            <wire x2="720" y1="1568" y2="1568" x1="656" />
            <wire x2="736" y1="1568" y2="1568" x1="720" />
            <wire x2="656" y1="1344" y2="1568" x1="656" />
            <wire x2="1120" y1="1344" y2="1344" x1="656" />
            <wire x2="2064" y1="1344" y2="1344" x1="1120" />
            <wire x2="1120" y1="1344" y2="1872" x1="1120" />
            <wire x2="2048" y1="1872" y2="1872" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="544" y="1040" name="S2" orien="R180" />
        <iomarker fontsize="28" x="544" y="1568" name="S3" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="1520" y1="1568" y2="1568" x1="960" />
            <wire x2="1520" y1="848" y2="1568" x1="1520" />
            <wire x2="1536" y1="848" y2="848" x1="1520" />
            <wire x2="2080" y1="848" y2="848" x1="1536" />
            <wire x2="2112" y1="448" y2="448" x1="1536" />
            <wire x2="1536" y1="448" y2="848" x1="1536" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1840" y1="592" y2="592" x1="960" />
            <wire x2="2080" y1="592" y2="592" x1="1840" />
            <wire x2="2080" y1="592" y2="720" x1="2080" />
            <wire x2="1840" y1="592" y2="1216" x1="1840" />
            <wire x2="2064" y1="1216" y2="1216" x1="1840" />
        </branch>
        <instance x="2624" y="1184" name="XLXI_8" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2624" y1="384" y2="384" x1="2368" />
            <wire x2="2624" y1="384" y2="928" x1="2624" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2480" y1="784" y2="784" x1="2336" />
            <wire x2="2480" y1="784" y2="992" x1="2480" />
            <wire x2="2624" y1="992" y2="992" x1="2480" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1296" y1="1040" y2="1040" x1="976" />
            <wire x2="1504" y1="1040" y2="1040" x1="1296" />
            <wire x2="1296" y1="1040" y2="1280" x1="1296" />
            <wire x2="2064" y1="1280" y2="1280" x1="1296" />
            <wire x2="1504" y1="384" y2="1040" x1="1504" />
            <wire x2="2112" y1="384" y2="384" x1="1504" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2464" y1="1280" y2="1280" x1="2320" />
            <wire x2="2464" y1="1056" y2="1280" x1="2464" />
            <wire x2="2624" y1="1056" y2="1056" x1="2464" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2624" y1="1808" y2="1808" x1="2304" />
            <wire x2="2624" y1="1120" y2="1808" x1="2624" />
        </branch>
        <branch name="F">
            <wire x2="2912" y1="1024" y2="1024" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2912" y="1024" name="F" orien="R0" />
    </sheet>
</drawing>