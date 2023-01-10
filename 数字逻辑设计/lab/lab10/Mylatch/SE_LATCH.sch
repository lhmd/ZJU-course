<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="R" />
        <signal name="Qbar" />
        <signal name="Q" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="S" />
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
        <instance x="1968" y="1088" name="XLXI_1" orien="R0" />
        <instance x="1952" y="1360" name="XLXI_2" orien="R0" />
        <branch name="R">
            <wire x2="1952" y1="1296" y2="1296" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1296" name="R" orien="R180" />
        <branch name="Qbar">
            <wire x2="1968" y1="1024" y2="1024" x1="1904" />
            <wire x2="1904" y1="1024" y2="1104" x1="1904" />
            <wire x2="2304" y1="1104" y2="1104" x1="1904" />
            <wire x2="2304" y1="1104" y2="1264" x1="2304" />
            <wire x2="2544" y1="1264" y2="1264" x1="2304" />
            <wire x2="2304" y1="1264" y2="1264" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1264" name="Qbar" orien="R0" />
        <branch name="Q">
            <wire x2="1952" y1="1232" y2="1232" x1="1888" />
            <wire x2="1888" y1="1232" y2="1376" x1="1888" />
            <wire x2="2320" y1="1376" y2="1376" x1="1888" />
            <wire x2="2320" y1="992" y2="992" x1="2224" />
            <wire x2="2496" y1="992" y2="992" x1="2320" />
            <wire x2="2320" y1="992" y2="1376" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2496" y="992" name="Q" orien="R0" />
        <branch name="S">
            <wire x2="1968" y1="960" y2="960" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1536" y="960" name="S" orien="R180" />
    </sheet>
</drawing>