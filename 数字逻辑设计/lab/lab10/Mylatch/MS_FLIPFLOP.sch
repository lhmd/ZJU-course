<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S" />
        <signal name="R" />
        <signal name="C" />
        <signal name="XLXN_5" />
        <signal name="Y" />
        <signal name="XLXN_7" />
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="XLXN_8" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Y" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <blockdef name="CSR_LATCH">
            <timestamp>2019-11-18T6:11:47</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="CSR_LATCH" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="R" />
            <blockpin signalname="Y" name="S" />
            <blockpin signalname="XLXN_7" name="C" />
            <blockpin signalname="Qbar" name="Qbar" />
            <blockpin signalname="Q" name="Q" />
        </block>
        <block symbolname="CSR_LATCH" name="XLXI_2">
            <blockpin signalname="R" name="R" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_5" name="Qbar" />
            <blockpin signalname="Y" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1776" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="S">
            <wire x2="1760" y1="1200" y2="1200" x1="1520" />
            <wire x2="1776" y1="1200" y2="1200" x1="1760" />
        </branch>
        <branch name="R">
            <wire x2="1776" y1="1136" y2="1136" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1136" name="R" orien="R180" />
        <branch name="C">
            <wire x2="1632" y1="1264" y2="1264" x1="1520" />
            <wire x2="1776" y1="1264" y2="1264" x1="1632" />
            <wire x2="1632" y1="1264" y2="1344" x1="1632" />
            <wire x2="1680" y1="1344" y2="1344" x1="1632" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2464" y1="1136" y2="1136" x1="2160" />
        </branch>
        <branch name="Y">
            <wire x2="2304" y1="1264" y2="1264" x1="2160" />
            <wire x2="2464" y1="1200" y2="1200" x1="2304" />
            <wire x2="2304" y1="1200" y2="1248" x1="2304" />
            <wire x2="2304" y1="1248" y2="1264" x1="2304" />
            <wire x2="2304" y1="1248" y2="1472" x1="2304" />
            <wire x2="3072" y1="1472" y2="1472" x1="2304" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2448" y1="1344" y2="1344" x1="1904" />
            <wire x2="2464" y1="1264" y2="1264" x1="2448" />
            <wire x2="2448" y1="1264" y2="1344" x1="2448" />
        </branch>
        <branch name="Q">
            <wire x2="2864" y1="1264" y2="1264" x1="2848" />
            <wire x2="3072" y1="1264" y2="1264" x1="2864" />
        </branch>
        <branch name="Qbar">
            <wire x2="2864" y1="1136" y2="1136" x1="2848" />
            <wire x2="3040" y1="1136" y2="1136" x1="2864" />
        </branch>
        <instance x="2464" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3072" y="1472" name="Y" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1264" name="Q" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1136" name="Qbar" orien="R0" />
        <instance x="1680" y="1376" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="1520" y="1200" name="S" orien="R180" />
        <iomarker fontsize="28" x="1520" y="1264" name="C" orien="R180" />
    </sheet>
</drawing>