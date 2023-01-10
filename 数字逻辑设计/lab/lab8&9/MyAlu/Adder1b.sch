<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_4" />
        <signal name="S" />
        <signal name="Co" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="Co" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Co" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1056" name="XLXI_1" orien="R0" />
        <instance x="1104" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1104" y="1472" name="XLXI_3" orien="R0" />
        <instance x="1104" y="1632" name="XLXI_4" orien="R0" />
        <instance x="1504" y="1504" name="XLXI_5" orien="R0" />
        <instance x="1056" y="800" name="XLXI_6" orien="R0" />
        <branch name="A">
            <wire x2="816" y1="672" y2="672" x1="736" />
            <wire x2="896" y1="672" y2="672" x1="816" />
            <wire x2="1056" y1="672" y2="672" x1="896" />
            <wire x2="816" y1="672" y2="1152" x1="816" />
            <wire x2="816" y1="1152" y2="1168" x1="816" />
            <wire x2="1104" y1="1168" y2="1168" x1="816" />
            <wire x2="816" y1="1168" y2="1504" x1="816" />
            <wire x2="1104" y1="1504" y2="1504" x1="816" />
        </branch>
        <branch name="B">
            <wire x2="896" y1="736" y2="736" x1="736" />
            <wire x2="1056" y1="736" y2="736" x1="896" />
            <wire x2="896" y1="736" y2="1232" x1="896" />
            <wire x2="1104" y1="1232" y2="1232" x1="896" />
            <wire x2="896" y1="1232" y2="1344" x1="896" />
            <wire x2="1104" y1="1344" y2="1344" x1="896" />
        </branch>
        <branch name="C">
            <wire x2="992" y1="992" y2="992" x1="736" />
            <wire x2="1472" y1="992" y2="992" x1="992" />
            <wire x2="992" y1="992" y2="1408" x1="992" />
            <wire x2="1104" y1="1408" y2="1408" x1="992" />
            <wire x2="992" y1="1408" y2="1568" x1="992" />
            <wire x2="1104" y1="1568" y2="1568" x1="992" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1392" y1="704" y2="704" x1="1312" />
            <wire x2="1392" y1="704" y2="928" x1="1392" />
            <wire x2="1472" y1="928" y2="928" x1="1392" />
        </branch>
        <branch name="S">
            <wire x2="2240" y1="960" y2="960" x1="1728" />
        </branch>
        <branch name="Co">
            <wire x2="2240" y1="1376" y2="1376" x1="1760" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1504" y1="1200" y2="1200" x1="1360" />
            <wire x2="1504" y1="1200" y2="1312" x1="1504" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1504" y1="1376" y2="1376" x1="1360" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1504" y1="1536" y2="1536" x1="1360" />
            <wire x2="1504" y1="1440" y2="1536" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="736" y="672" name="A" orien="R180" />
        <iomarker fontsize="28" x="736" y="736" name="B" orien="R180" />
        <iomarker fontsize="28" x="736" y="992" name="C" orien="R180" />
        <iomarker fontsize="28" x="2240" y="960" name="S" orien="R0" />
        <iomarker fontsize="28" x="2240" y="1376" name="Co" orien="R0" />
    </sheet>
</drawing>