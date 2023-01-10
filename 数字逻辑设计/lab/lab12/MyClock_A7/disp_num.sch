<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rst" />
        <signal name="clkdiv(31:0)" />
        <signal name="clkdiv(18:17)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="HEX(3:0)" />
        <signal name="HEX(2)" />
        <signal name="HEX(3)" />
        <signal name="HEX(1)" />
        <signal name="HEX(0)" />
        <signal name="segment(7:0)" />
        <signal name="segment(0)" />
        <signal name="segment(1)" />
        <signal name="segment(2)" />
        <signal name="segment(3)" />
        <signal name="segment(4)" />
        <signal name="segment(5)" />
        <signal name="segment(6)" />
        <signal name="segment(7)" />
        <signal name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="segment(7:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="clkdiv">
            <timestamp>2020-12-21T8:8:2</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="DisplaySync_sch">
            <timestamp>2020-10-21T10:50:55</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MC14495">
            <timestamp>2020-10-19T12:47:9</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DisplaySync_sch" name="XLXI_2">
            <blockpin signalname="clkdiv(18:17)" name="scan(1:0)" />
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="points(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_10" name="p" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MC14495" name="XLXI_3">
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="XLXN_11" name="LE" />
            <blockpin signalname="XLXN_10" name="Point" />
            <blockpin signalname="segment(0)" name="a" />
            <blockpin signalname="segment(1)" name="b" />
            <blockpin signalname="segment(2)" name="c" />
            <blockpin signalname="segment(3)" name="d" />
            <blockpin signalname="segment(4)" name="e" />
            <blockpin signalname="segment(5)" name="f" />
            <blockpin signalname="segment(6)" name="g" />
            <blockpin signalname="segment(7)" name="p" />
        </block>
        <block symbolname="clkdiv" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clkdiv(31:0)" name="clkdiv(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="544" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <branch name="rst">
            <wire x2="400" y1="816" y2="816" x1="384" />
            <wire x2="544" y1="816" y2="816" x1="400" />
        </branch>
        <branch name="clkdiv(31:0)">
            <wire x2="1008" y1="1008" y2="1008" x1="352" />
            <wire x2="352" y1="1008" y2="1232" x1="352" />
            <wire x2="1008" y1="752" y2="752" x1="928" />
            <wire x2="1008" y1="752" y2="1008" x1="1008" />
        </branch>
        <bustap x2="448" y1="1232" y2="1232" x1="352" />
        <branch name="clkdiv(18:17)">
            <wire x2="544" y1="1232" y2="1232" x1="448" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="544" y1="1296" y2="1296" x1="368" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="544" y1="1360" y2="1360" x1="368" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="544" y1="1424" y2="1424" x1="368" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="944" y1="1296" y2="1296" x1="928" />
            <wire x2="1136" y1="1296" y2="1296" x1="944" />
        </branch>
        <instance x="1536" y="1200" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="1376" y1="1360" y2="1360" x1="928" />
            <wire x2="1376" y1="1120" y2="1360" x1="1376" />
            <wire x2="1536" y1="1120" y2="1120" x1="1376" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1488" y1="1424" y2="1424" x1="928" />
            <wire x2="1488" y1="1040" y2="1424" x1="1488" />
            <wire x2="1536" y1="1040" y2="1040" x1="1488" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1264" y1="1232" y2="1232" x1="928" />
            <wire x2="1264" y1="720" y2="800" x1="1264" />
            <wire x2="1264" y1="800" y2="880" x1="1264" />
            <wire x2="1264" y1="880" y2="960" x1="1264" />
            <wire x2="1264" y1="960" y2="1232" x1="1264" />
        </branch>
        <bustap x2="1360" y1="720" y2="720" x1="1264" />
        <bustap x2="1360" y1="800" y2="800" x1="1264" />
        <bustap x2="1360" y1="880" y2="880" x1="1264" />
        <bustap x2="1360" y1="960" y2="960" x1="1264" />
        <branch name="HEX(2)">
            <wire x2="1536" y1="720" y2="720" x1="1360" />
        </branch>
        <branch name="HEX(3)">
            <wire x2="1536" y1="800" y2="800" x1="1360" />
        </branch>
        <branch name="HEX(1)">
            <wire x2="1536" y1="880" y2="880" x1="1360" />
        </branch>
        <branch name="HEX(0)">
            <wire x2="1536" y1="960" y2="960" x1="1360" />
        </branch>
        <branch name="segment(7:0)">
            <wire x2="2096" y1="672" y2="720" x1="2096" />
            <wire x2="2096" y1="720" y2="784" x1="2096" />
            <wire x2="2096" y1="784" y2="848" x1="2096" />
            <wire x2="2096" y1="848" y2="912" x1="2096" />
            <wire x2="2096" y1="912" y2="976" x1="2096" />
            <wire x2="2096" y1="976" y2="1040" x1="2096" />
            <wire x2="2096" y1="1040" y2="1104" x1="2096" />
            <wire x2="2096" y1="1104" y2="1168" x1="2096" />
            <wire x2="2096" y1="1168" y2="1216" x1="2096" />
            <wire x2="2256" y1="1216" y2="1216" x1="2096" />
        </branch>
        <bustap x2="2000" y1="720" y2="720" x1="2096" />
        <bustap x2="2000" y1="784" y2="784" x1="2096" />
        <bustap x2="2000" y1="848" y2="848" x1="2096" />
        <bustap x2="2000" y1="912" y2="912" x1="2096" />
        <bustap x2="2000" y1="976" y2="976" x1="2096" />
        <bustap x2="2000" y1="1040" y2="1040" x1="2096" />
        <bustap x2="2000" y1="1104" y2="1104" x1="2096" />
        <bustap x2="2000" y1="1168" y2="1168" x1="2096" />
        <branch name="segment(0)">
            <wire x2="2000" y1="720" y2="720" x1="1920" />
        </branch>
        <branch name="segment(1)">
            <wire x2="2000" y1="784" y2="784" x1="1920" />
        </branch>
        <branch name="segment(2)">
            <wire x2="2000" y1="848" y2="848" x1="1920" />
        </branch>
        <branch name="segment(3)">
            <wire x2="2000" y1="912" y2="912" x1="1920" />
        </branch>
        <branch name="segment(4)">
            <wire x2="2000" y1="976" y2="976" x1="1920" />
        </branch>
        <branch name="segment(5)">
            <wire x2="2000" y1="1040" y2="1040" x1="1920" />
        </branch>
        <branch name="segment(6)">
            <wire x2="2000" y1="1104" y2="1104" x1="1920" />
        </branch>
        <branch name="segment(7)">
            <wire x2="2000" y1="1168" y2="1168" x1="1920" />
        </branch>
        <branch name="clk">
            <wire x2="544" y1="752" y2="752" x1="384" />
        </branch>
        <instance x="544" y="784" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="752" name="clk" orien="R180" />
        <iomarker fontsize="28" x="384" y="816" name="rst" orien="R180" />
        <iomarker fontsize="28" x="368" y="1296" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1360" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1424" name="LES(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1296" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1216" name="segment(7:0)" orien="R0" />
    </sheet>
</drawing>