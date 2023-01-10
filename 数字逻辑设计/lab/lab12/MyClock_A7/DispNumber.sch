<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="SW(2)" />
        <signal name="SW(3)" />
        <signal name="SW(0)" />
        <signal name="BTN(1:0)" />
        <signal name="BTN(0)" />
        <signal name="BTN(1)" />
        <signal name="SW(1)" />
        <signal name="Segment(0)" />
        <signal name="Segment(1)" />
        <signal name="Segment(7:0)" />
        <signal name="XLXN_15" />
        <signal name="Segment(2)" />
        <signal name="Segment(3)" />
        <signal name="Segment(4)" />
        <signal name="Segment(5)" />
        <signal name="Segment(6)" />
        <signal name="Segment(7)" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <signal name="SW(7)" />
        <signal name="SW(6)" />
        <signal name="SW(5)" />
        <signal name="SW(4)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="BTN(1:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="MC14495">
            <timestamp>2020-10-19T15:27:27</timestamp>
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
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="MC14495" name="XLXI_1">
            <blockpin signalname="SW(2)" name="D2" />
            <blockpin signalname="SW(3)" name="D3" />
            <blockpin signalname="SW(1)" name="D1" />
            <blockpin signalname="SW(0)" name="D0" />
            <blockpin signalname="BTN(0)" name="LE" />
            <blockpin signalname="BTN(1)" name="Point" />
            <blockpin signalname="Segment(0)" name="a" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(7)" name="p" />
        </block>
        <block symbolname="inv4" name="XLXI_2">
            <blockpin signalname="SW(4)" name="I0" />
            <blockpin signalname="SW(5)" name="I1" />
            <blockpin signalname="SW(6)" name="I2" />
            <blockpin signalname="SW(7)" name="I3" />
            <blockpin signalname="AN(0)" name="O0" />
            <blockpin signalname="AN(1)" name="O1" />
            <blockpin signalname="AN(2)" name="O2" />
            <blockpin signalname="AN(3)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SW(7:0)">
            <wire x2="816" y1="768" y2="768" x1="256" />
            <wire x2="816" y1="768" y2="1232" x1="816" />
            <wire x2="816" y1="1232" y2="1296" x1="816" />
            <wire x2="816" y1="1296" y2="1360" x1="816" />
            <wire x2="816" y1="1360" y2="1424" x1="816" />
            <wire x2="816" y1="1424" y2="1968" x1="816" />
            <wire x2="816" y1="368" y2="480" x1="816" />
            <wire x2="816" y1="480" y2="560" x1="816" />
            <wire x2="816" y1="560" y2="640" x1="816" />
            <wire x2="816" y1="640" y2="720" x1="816" />
            <wire x2="816" y1="720" y2="768" x1="816" />
        </branch>
        <instance x="1232" y="960" name="XLXI_1" orien="R0">
        </instance>
        <bustap x2="912" y1="480" y2="480" x1="816" />
        <bustap x2="912" y1="560" y2="560" x1="816" />
        <bustap x2="912" y1="640" y2="640" x1="816" />
        <bustap x2="912" y1="720" y2="720" x1="816" />
        <branch name="SW(2)">
            <wire x2="1232" y1="480" y2="480" x1="912" />
        </branch>
        <branch name="SW(3)">
            <wire x2="1232" y1="560" y2="560" x1="912" />
        </branch>
        <branch name="SW(0)">
            <wire x2="1232" y1="720" y2="720" x1="912" />
        </branch>
        <iomarker fontsize="28" x="256" y="768" name="SW(7:0)" orien="R180" />
        <branch name="BTN(1:0)">
            <wire x2="1056" y1="864" y2="864" x1="544" />
            <wire x2="1056" y1="864" y2="880" x1="1056" />
            <wire x2="1056" y1="880" y2="944" x1="1056" />
            <wire x2="1056" y1="768" y2="800" x1="1056" />
            <wire x2="1056" y1="800" y2="864" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="544" y="864" name="BTN(1:0)" orien="R180" />
        <bustap x2="1152" y1="800" y2="800" x1="1056" />
        <bustap x2="1152" y1="880" y2="880" x1="1056" />
        <branch name="BTN(0)">
            <wire x2="1232" y1="800" y2="800" x1="1152" />
        </branch>
        <branch name="BTN(1)">
            <wire x2="1232" y1="880" y2="880" x1="1152" />
        </branch>
        <branch name="SW(1)">
            <wire x2="1232" y1="640" y2="640" x1="912" />
        </branch>
        <branch name="Segment(0)">
            <wire x2="1936" y1="480" y2="480" x1="1616" />
            <wire x2="2064" y1="480" y2="480" x1="1936" />
            <wire x2="2080" y1="480" y2="480" x1="2064" />
        </branch>
        <branch name="Segment(1)">
            <wire x2="1936" y1="544" y2="544" x1="1616" />
            <wire x2="2080" y1="544" y2="544" x1="1936" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2176" y1="416" y2="480" x1="2176" />
            <wire x2="2176" y1="480" y2="544" x1="2176" />
            <wire x2="2176" y1="544" y2="608" x1="2176" />
            <wire x2="2176" y1="608" y2="672" x1="2176" />
            <wire x2="2176" y1="672" y2="688" x1="2176" />
            <wire x2="2528" y1="688" y2="688" x1="2176" />
            <wire x2="2176" y1="688" y2="736" x1="2176" />
            <wire x2="2176" y1="736" y2="800" x1="2176" />
            <wire x2="2176" y1="800" y2="864" x1="2176" />
            <wire x2="2176" y1="864" y2="928" x1="2176" />
            <wire x2="2176" y1="928" y2="960" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2528" y="688" name="Segment(7:0)" orien="R0" />
        <bustap x2="2080" y1="480" y2="480" x1="2176" />
        <bustap x2="2080" y1="544" y2="544" x1="2176" />
        <bustap x2="2080" y1="608" y2="608" x1="2176" />
        <bustap x2="2080" y1="672" y2="672" x1="2176" />
        <bustap x2="2080" y1="736" y2="736" x1="2176" />
        <bustap x2="2080" y1="800" y2="800" x1="2176" />
        <bustap x2="2080" y1="864" y2="864" x1="2176" />
        <bustap x2="2080" y1="928" y2="928" x1="2176" />
        <branch name="Segment(2)">
            <wire x2="2080" y1="608" y2="608" x1="1616" />
        </branch>
        <branch name="Segment(3)">
            <wire x2="2080" y1="672" y2="672" x1="1616" />
        </branch>
        <branch name="Segment(4)">
            <wire x2="2080" y1="736" y2="736" x1="1616" />
        </branch>
        <branch name="Segment(5)">
            <wire x2="2080" y1="800" y2="800" x1="1616" />
        </branch>
        <branch name="Segment(6)">
            <wire x2="2080" y1="864" y2="864" x1="1616" />
        </branch>
        <branch name="Segment(7)">
            <wire x2="2080" y1="928" y2="928" x1="1616" />
        </branch>
        <instance x="1296" y="1456" name="XLXI_2" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2176" y1="1104" y2="1232" x1="2176" />
            <wire x2="2176" y1="1232" y2="1296" x1="2176" />
            <wire x2="2496" y1="1296" y2="1296" x1="2176" />
            <wire x2="2176" y1="1296" y2="1376" x1="2176" />
            <wire x2="2176" y1="1376" y2="1424" x1="2176" />
            <wire x2="2176" y1="1424" y2="1504" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1296" name="AN(3:0)" orien="R0" />
        <bustap x2="2080" y1="1232" y2="1232" x1="2176" />
        <bustap x2="2080" y1="1296" y2="1296" x1="2176" />
        <bustap x2="2080" y1="1376" y2="1376" x1="2176" />
        <bustap x2="2080" y1="1424" y2="1424" x1="2176" />
        <branch name="AN(3)">
            <wire x2="2080" y1="1232" y2="1232" x1="1520" />
        </branch>
        <branch name="AN(2)">
            <wire x2="2080" y1="1296" y2="1296" x1="1520" />
        </branch>
        <branch name="AN(1)">
            <wire x2="1792" y1="1360" y2="1360" x1="1520" />
            <wire x2="1792" y1="1360" y2="1376" x1="1792" />
            <wire x2="2080" y1="1376" y2="1376" x1="1792" />
        </branch>
        <branch name="AN(0)">
            <wire x2="2080" y1="1424" y2="1424" x1="1520" />
        </branch>
        <bustap x2="912" y1="1232" y2="1232" x1="816" />
        <bustap x2="912" y1="1296" y2="1296" x1="816" />
        <bustap x2="912" y1="1360" y2="1360" x1="816" />
        <bustap x2="912" y1="1424" y2="1424" x1="816" />
        <branch name="SW(7)">
            <wire x2="1296" y1="1232" y2="1232" x1="912" />
        </branch>
        <branch name="SW(6)">
            <wire x2="1296" y1="1296" y2="1296" x1="912" />
        </branch>
        <branch name="SW(5)">
            <wire x2="1296" y1="1360" y2="1360" x1="912" />
        </branch>
        <branch name="SW(4)">
            <wire x2="1296" y1="1424" y2="1424" x1="912" />
        </branch>
    </sheet>
</drawing>