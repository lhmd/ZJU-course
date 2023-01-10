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
        <signal name="XLXN_6" />
        <signal name="F" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_16(1)" />
        <signal name="XLXN_16(2)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_16(7)" />
        <signal name="XLXN_16(4)" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <blockdef name="D_74LS138">
            <timestamp>2022-10-17T8:32:17</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <block symbolname="D_74LS138" name="XLXI_1">
            <blockpin signalname="S1" name="B" />
            <blockpin signalname="S2" name="A" />
            <blockpin signalname="S3" name="G" />
            <blockpin signalname="XLXN_6" name="G2A" />
            <blockpin signalname="XLXN_5" name="G2B" />
            <blockpin signalname="XLXN_4" name="C" />
            <blockpin signalname="XLXN_16(7:0)" name="Y(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
        <block symbolname="nand4" name="XLXI_5">
            <blockpin signalname="XLXN_16(4)" name="I0" />
            <blockpin signalname="XLXN_16(2)" name="I1" />
            <blockpin signalname="XLXN_16(1)" name="I2" />
            <blockpin signalname="XLXN_16(7)" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="S1">
            <wire x2="1120" y1="736" y2="736" x1="1088" />
        </branch>
        <branch name="S2">
            <wire x2="1120" y1="800" y2="800" x1="1088" />
        </branch>
        <branch name="S3">
            <wire x2="1120" y1="864" y2="864" x1="1088" />
        </branch>
        <instance x="784" y="1104" name="XLXI_2" orien="R0" />
        <instance x="896" y="1152" name="XLXI_3" orien="R0" />
        <instance x="592" y="1120" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="656" y1="1120" y2="1184" x1="656" />
            <wire x2="1040" y1="1184" y2="1184" x1="656" />
            <wire x2="1040" y1="1056" y2="1184" x1="1040" />
            <wire x2="1120" y1="1056" y2="1056" x1="1040" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1120" y1="992" y2="992" x1="960" />
            <wire x2="960" y1="992" y2="1024" x1="960" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1120" y1="928" y2="928" x1="848" />
            <wire x2="848" y1="928" y2="976" x1="848" />
        </branch>
        <instance x="1776" y="1008" name="XLXI_5" orien="R0" />
        <branch name="F">
            <wire x2="2064" y1="848" y2="848" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="1088" y="736" name="S1" orien="R180" />
        <iomarker fontsize="28" x="1088" y="800" name="S2" orien="R180" />
        <iomarker fontsize="28" x="1088" y="864" name="S3" orien="R180" />
        <iomarker fontsize="28" x="2064" y="848" name="F" orien="R0" />
        <branch name="XLXN_16(7:0)">
            <wire x2="1536" y1="736" y2="736" x1="1504" />
            <wire x2="1536" y1="736" y2="768" x1="1536" />
            <wire x2="1536" y1="768" y2="816" x1="1536" />
            <wire x2="1536" y1="816" y2="880" x1="1536" />
            <wire x2="1536" y1="880" y2="928" x1="1536" />
            <wire x2="1536" y1="928" y2="1008" x1="1536" />
        </branch>
        <bustap x2="1632" y1="768" y2="768" x1="1536" />
        <bustap x2="1632" y1="816" y2="816" x1="1536" />
        <branch name="XLXN_16(1)">
            <wire x2="1712" y1="816" y2="816" x1="1632" />
            <wire x2="1776" y1="816" y2="816" x1="1712" />
        </branch>
        <bustap x2="1632" y1="880" y2="880" x1="1536" />
        <branch name="XLXN_16(2)">
            <wire x2="1696" y1="880" y2="880" x1="1632" />
            <wire x2="1776" y1="880" y2="880" x1="1696" />
        </branch>
        <bustap x2="1632" y1="928" y2="928" x1="1536" />
        <branch name="XLXN_16(7)">
            <wire x2="1696" y1="768" y2="768" x1="1632" />
            <wire x2="1776" y1="752" y2="752" x1="1696" />
            <wire x2="1696" y1="752" y2="768" x1="1696" />
        </branch>
        <branch name="XLXN_16(4)">
            <wire x2="1696" y1="928" y2="928" x1="1632" />
            <wire x2="1696" y1="928" y2="944" x1="1696" />
            <wire x2="1776" y1="944" y2="944" x1="1696" />
        </branch>
    </sheet>
</drawing>