<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="S" />
        <signal name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
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
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="896" name="XLXI_1" orien="R0" />
        <instance x="1200" y="1168" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="1136" y1="944" y2="1040" x1="1136" />
            <wire x2="1200" y1="1040" y2="1040" x1="1136" />
            <wire x2="1536" y1="944" y2="944" x1="1136" />
            <wire x2="1536" y1="800" y2="800" x1="1456" />
            <wire x2="1632" y1="800" y2="800" x1="1536" />
            <wire x2="1536" y1="800" y2="944" x1="1536" />
        </branch>
        <branch name="Qbar">
            <wire x2="1200" y1="832" y2="832" x1="1136" />
            <wire x2="1136" y1="832" y2="912" x1="1136" />
            <wire x2="1472" y1="912" y2="912" x1="1136" />
            <wire x2="1472" y1="912" y2="1072" x1="1472" />
            <wire x2="1584" y1="1072" y2="1072" x1="1472" />
            <wire x2="1472" y1="1072" y2="1072" x1="1456" />
        </branch>
        <branch name="S">
            <wire x2="1200" y1="768" y2="768" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="768" name="S" orien="R180" />
        <branch name="R">
            <wire x2="1200" y1="1104" y2="1104" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1104" name="R" orien="R180" />
        <iomarker fontsize="28" x="1632" y="800" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1072" name="Qbar" orien="R0" />
    </sheet>
</drawing>