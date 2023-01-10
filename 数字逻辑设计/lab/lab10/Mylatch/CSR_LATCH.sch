<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Qbar" />
        <signal name="Q" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="R" />
        <signal name="S" />
        <signal name="C" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="C" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="1168" name="XLXI_1" orien="R0" />
        <instance x="1680" y="1440" name="XLXI_2" orien="R0" />
        <branch name="Qbar">
            <wire x2="1616" y1="1104" y2="1184" x1="1616" />
            <wire x2="2032" y1="1184" y2="1184" x1="1616" />
            <wire x2="2032" y1="1184" y2="1344" x1="2032" />
            <wire x2="2272" y1="1344" y2="1344" x1="2032" />
            <wire x2="1696" y1="1104" y2="1104" x1="1616" />
            <wire x2="2032" y1="1344" y2="1344" x1="1936" />
        </branch>
        <branch name="Q">
            <wire x2="2048" y1="1248" y2="1248" x1="1616" />
            <wire x2="1616" y1="1248" y2="1312" x1="1616" />
            <wire x2="1680" y1="1312" y2="1312" x1="1616" />
            <wire x2="2048" y1="1072" y2="1072" x1="1952" />
            <wire x2="2224" y1="1072" y2="1072" x1="2048" />
            <wire x2="2048" y1="1072" y2="1248" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1344" name="Qbar" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1072" name="Q" orien="R0" />
        <instance x="1120" y="1472" name="XLXI_3" orien="R0" />
        <instance x="1120" y="1136" name="XLXI_4" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1696" y1="1040" y2="1040" x1="1376" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1680" y1="1376" y2="1376" x1="1376" />
        </branch>
        <branch name="R">
            <wire x2="1120" y1="1408" y2="1408" x1="992" />
        </branch>
        <branch name="S">
            <wire x2="1120" y1="1008" y2="1008" x1="896" />
        </branch>
        <branch name="C">
            <wire x2="1104" y1="1232" y2="1232" x1="1008" />
            <wire x2="1104" y1="1232" y2="1344" x1="1104" />
            <wire x2="1120" y1="1344" y2="1344" x1="1104" />
            <wire x2="1120" y1="1072" y2="1072" x1="1104" />
            <wire x2="1104" y1="1072" y2="1232" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="896" y="1008" name="S" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1232" name="C" orien="R180" />
        <iomarker fontsize="28" x="992" y="1408" name="R" orien="R180" />
    </sheet>
</drawing>