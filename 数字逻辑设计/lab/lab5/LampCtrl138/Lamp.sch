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
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="F" />
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
            <blockpin signalname="XLXN_7(7:0)" name="Y(7:0)" />
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
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <branch name="S1">
            <wire x2="1408" y1="880" y2="880" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="880" name="S1" orien="R180" />
        <branch name="S2">
            <wire x2="1408" y1="944" y2="944" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="944" name="S2" orien="R180" />
        <branch name="S3">
            <wire x2="1408" y1="1008" y2="1008" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1008" name="S3" orien="R180" />
        <instance x="1072" y="1248" name="XLXI_2" orien="R0" />
        <instance x="1184" y="1296" name="XLXI_3" orien="R0" />
        <instance x="880" y="1264" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="944" y1="1264" y2="1328" x1="944" />
            <wire x2="1328" y1="1328" y2="1328" x1="944" />
            <wire x2="1328" y1="1200" y2="1328" x1="1328" />
            <wire x2="1408" y1="1200" y2="1200" x1="1328" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1408" y1="1136" y2="1136" x1="1248" />
            <wire x2="1248" y1="1136" y2="1168" x1="1248" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1408" y1="1072" y2="1072" x1="1136" />
            <wire x2="1136" y1="1072" y2="1120" x1="1136" />
        </branch>
        <branch name="XLXN_7(7:0)">
            <wire x2="1872" y1="880" y2="880" x1="1792" />
            <wire x2="1872" y1="880" y2="928" x1="1872" />
            <wire x2="1872" y1="928" y2="976" x1="1872" />
            <wire x2="1872" y1="976" y2="1040" x1="1872" />
            <wire x2="1872" y1="1040" y2="1088" x1="1872" />
            <wire x2="1872" y1="1088" y2="1200" x1="1872" />
        </branch>
        <bustap x2="1968" y1="928" y2="928" x1="1872" />
        <bustap x2="1968" y1="976" y2="976" x1="1872" />
        <bustap x2="1968" y1="1040" y2="1040" x1="1872" />
        <bustap x2="1968" y1="1088" y2="1088" x1="1872" />
        <branch name="XLXN_11">
            <wire x2="2064" y1="1088" y2="1088" x1="1968" />
        </branch>
        <instance x="2064" y="1152" name="XLXI_5" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2016" y1="928" y2="928" x1="1968" />
            <wire x2="2064" y1="896" y2="896" x1="2016" />
            <wire x2="2016" y1="896" y2="928" x1="2016" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2032" y1="976" y2="976" x1="1968" />
            <wire x2="2064" y1="960" y2="960" x1="2032" />
            <wire x2="2032" y1="960" y2="976" x1="2032" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2032" y1="1040" y2="1040" x1="1968" />
            <wire x2="2064" y1="1024" y2="1024" x1="2032" />
            <wire x2="2032" y1="1024" y2="1040" x1="2032" />
        </branch>
        <branch name="F">
            <wire x2="2352" y1="992" y2="992" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="992" name="F" orien="R0" />
    </sheet>
</drawing>