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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_11" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1856" y="1088" name="XLXI_1" orien="R0" />
        <instance x="1840" y="1360" name="XLXI_2" orien="R0" />
        <branch name="Qbar">
            <wire x2="1776" y1="1024" y2="1104" x1="1776" />
            <wire x2="2192" y1="1104" y2="1104" x1="1776" />
            <wire x2="2192" y1="1104" y2="1264" x1="2192" />
            <wire x2="2432" y1="1264" y2="1264" x1="2192" />
            <wire x2="1856" y1="1024" y2="1024" x1="1776" />
            <wire x2="2192" y1="1264" y2="1264" x1="2096" />
        </branch>
        <branch name="Q">
            <wire x2="2208" y1="1168" y2="1168" x1="1776" />
            <wire x2="1776" y1="1168" y2="1232" x1="1776" />
            <wire x2="1840" y1="1232" y2="1232" x1="1776" />
            <wire x2="2208" y1="992" y2="992" x1="2112" />
            <wire x2="2384" y1="992" y2="992" x1="2208" />
            <wire x2="2208" y1="992" y2="1168" x1="2208" />
        </branch>
        <instance x="1280" y="1392" name="XLXI_3" orien="R0" />
        <instance x="1280" y="1056" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1856" y1="960" y2="960" x1="1536" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1840" y1="1296" y2="1296" x1="1536" />
        </branch>
        <branch name="C">
            <wire x2="1264" y1="1120" y2="1120" x1="1168" />
            <wire x2="1264" y1="1120" y2="1264" x1="1264" />
            <wire x2="1280" y1="1264" y2="1264" x1="1264" />
            <wire x2="1280" y1="992" y2="992" x1="1264" />
            <wire x2="1264" y1="992" y2="1120" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="2432" y="1264" name="Qbar" orien="R0" />
        <iomarker fontsize="28" x="2384" y="992" name="Q" orien="R0" />
        <branch name="D">
            <wire x2="976" y1="928" y2="928" x1="928" />
            <wire x2="1280" y1="928" y2="928" x1="976" />
            <wire x2="976" y1="928" y2="1328" x1="976" />
            <wire x2="1024" y1="1328" y2="1328" x1="976" />
        </branch>
        <iomarker fontsize="28" x="928" y="928" name="D" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="1280" y1="1328" y2="1328" x1="1248" />
        </branch>
        <instance x="1024" y="1360" name="XLXI_5" orien="R0" />
        <iomarker fontsize="28" x="1168" y="1120" name="C" orien="R180" />
    </sheet>
</drawing>