<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ctrl" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="A(3:0)" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="A(2)" />
        <signal name="A(3)" />
        <signal name="B(3:0)" />
        <signal name="B(0)" />
        <signal name="B(1)" />
        <signal name="B(2)" />
        <signal name="B(3)" />
        <signal name="S(3:0)" />
        <signal name="S(0)" />
        <signal name="S(1)" />
        <signal name="S(2)" />
        <signal name="S(3)" />
        <signal name="Co" />
        <port polarity="Input" name="Ctrl" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="S(3:0)" />
        <port polarity="Output" name="Co" />
        <blockdef name="AddSub1b">
            <timestamp>2022-10-25T4:4:15</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="AddSub1b" name="XLXI_1">
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="Ctrl" name="Ci" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(0)" name="S" />
            <blockpin signalname="XLXN_6" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_2">
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="XLXN_6" name="Ci" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(1)" name="S" />
            <blockpin signalname="XLXN_7" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_3">
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="XLXN_7" name="Ci" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(2)" name="S" />
            <blockpin signalname="XLXN_9" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_4">
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="XLXN_9" name="Ci" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(3)" name="S" />
            <blockpin signalname="Co" name="Co" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="688" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1296" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1296" y="1552" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1296" y="1984" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Ctrl">
            <wire x2="1072" y1="208" y2="208" x1="480" />
            <wire x2="1072" y1="208" y2="528" x1="1072" />
            <wire x2="1072" y1="528" y2="656" x1="1072" />
            <wire x2="1296" y1="656" y2="656" x1="1072" />
            <wire x2="1072" y1="656" y2="1088" x1="1072" />
            <wire x2="1296" y1="1088" y2="1088" x1="1072" />
            <wire x2="1072" y1="1088" y2="1520" x1="1072" />
            <wire x2="1296" y1="1520" y2="1520" x1="1072" />
            <wire x2="1072" y1="1520" y2="1952" x1="1072" />
            <wire x2="1296" y1="1952" y2="1952" x1="1072" />
            <wire x2="1296" y1="528" y2="528" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="480" y="208" name="Ctrl" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1232" y1="800" y2="960" x1="1232" />
            <wire x2="1296" y1="960" y2="960" x1="1232" />
            <wire x2="1760" y1="800" y2="800" x1="1232" />
            <wire x2="1760" y1="656" y2="656" x1="1680" />
            <wire x2="1760" y1="656" y2="800" x1="1760" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1232" y1="1232" y2="1392" x1="1232" />
            <wire x2="1296" y1="1392" y2="1392" x1="1232" />
            <wire x2="1760" y1="1232" y2="1232" x1="1232" />
            <wire x2="1760" y1="1088" y2="1088" x1="1680" />
            <wire x2="1760" y1="1088" y2="1232" x1="1760" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1696" y1="1616" y2="1616" x1="1248" />
            <wire x2="1248" y1="1616" y2="1824" x1="1248" />
            <wire x2="1296" y1="1824" y2="1824" x1="1248" />
            <wire x2="1696" y1="1520" y2="1520" x1="1680" />
            <wire x2="1696" y1="1520" y2="1616" x1="1696" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="432" y1="480" y2="528" x1="432" />
            <wire x2="432" y1="528" y2="560" x1="432" />
            <wire x2="432" y1="560" y2="592" x1="432" />
            <wire x2="432" y1="592" y2="624" x1="432" />
            <wire x2="432" y1="624" y2="704" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="480" name="A(3:0)" orien="R270" />
        <bustap x2="528" y1="528" y2="528" x1="432" />
        <bustap x2="528" y1="560" y2="560" x1="432" />
        <bustap x2="528" y1="592" y2="592" x1="432" />
        <bustap x2="528" y1="624" y2="624" x1="432" />
        <branch name="A(0)">
            <wire x2="912" y1="528" y2="528" x1="528" />
            <wire x2="912" y1="464" y2="528" x1="912" />
            <wire x2="1296" y1="464" y2="464" x1="912" />
        </branch>
        <branch name="A(1)">
            <wire x2="912" y1="560" y2="560" x1="528" />
            <wire x2="912" y1="560" y2="896" x1="912" />
            <wire x2="1296" y1="896" y2="896" x1="912" />
        </branch>
        <branch name="A(2)">
            <wire x2="896" y1="592" y2="592" x1="528" />
            <wire x2="896" y1="592" y2="1328" x1="896" />
            <wire x2="1296" y1="1328" y2="1328" x1="896" />
        </branch>
        <branch name="A(3)">
            <wire x2="880" y1="624" y2="624" x1="528" />
            <wire x2="880" y1="624" y2="1760" x1="880" />
            <wire x2="1296" y1="1760" y2="1760" x1="880" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="432" y1="896" y2="944" x1="432" />
            <wire x2="432" y1="944" y2="976" x1="432" />
            <wire x2="432" y1="976" y2="1008" x1="432" />
            <wire x2="432" y1="1008" y2="1040" x1="432" />
            <wire x2="432" y1="1040" y2="1120" x1="432" />
        </branch>
        <bustap x2="528" y1="944" y2="944" x1="432" />
        <bustap x2="528" y1="976" y2="976" x1="432" />
        <bustap x2="528" y1="1008" y2="1008" x1="432" />
        <bustap x2="528" y1="1040" y2="1040" x1="432" />
        <iomarker fontsize="28" x="432" y="896" name="B(3:0)" orien="R270" />
        <branch name="B(0)">
            <wire x2="928" y1="944" y2="944" x1="528" />
            <wire x2="928" y1="592" y2="944" x1="928" />
            <wire x2="1296" y1="592" y2="592" x1="928" />
        </branch>
        <branch name="B(1)">
            <wire x2="912" y1="976" y2="976" x1="528" />
            <wire x2="912" y1="976" y2="1024" x1="912" />
            <wire x2="1296" y1="1024" y2="1024" x1="912" />
        </branch>
        <branch name="B(2)">
            <wire x2="864" y1="1008" y2="1008" x1="528" />
            <wire x2="864" y1="1008" y2="1456" x1="864" />
            <wire x2="1296" y1="1456" y2="1456" x1="864" />
        </branch>
        <branch name="B(3)">
            <wire x2="848" y1="1040" y2="1040" x1="528" />
            <wire x2="848" y1="1040" y2="1888" x1="848" />
            <wire x2="1296" y1="1888" y2="1888" x1="848" />
        </branch>
        <branch name="S(3:0)">
            <wire x2="2176" y1="720" y2="880" x1="2176" />
            <wire x2="2176" y1="880" y2="960" x1="2176" />
            <wire x2="2176" y1="960" y2="1040" x1="2176" />
            <wire x2="2176" y1="1040" y2="1136" x1="2176" />
            <wire x2="2176" y1="1136" y2="1632" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="720" name="S(3:0)" orien="R270" />
        <bustap x2="2080" y1="880" y2="880" x1="2176" />
        <bustap x2="2080" y1="960" y2="960" x1="2176" />
        <bustap x2="2080" y1="1040" y2="1040" x1="2176" />
        <bustap x2="2080" y1="1136" y2="1136" x1="2176" />
        <branch name="S(0)">
            <wire x2="1872" y1="464" y2="464" x1="1680" />
            <wire x2="1872" y1="464" y2="880" x1="1872" />
            <wire x2="2080" y1="880" y2="880" x1="1872" />
        </branch>
        <branch name="S(1)">
            <wire x2="1872" y1="896" y2="896" x1="1680" />
            <wire x2="1872" y1="896" y2="960" x1="1872" />
            <wire x2="2080" y1="960" y2="960" x1="1872" />
        </branch>
        <branch name="S(2)">
            <wire x2="1872" y1="1328" y2="1328" x1="1680" />
            <wire x2="1872" y1="1040" y2="1328" x1="1872" />
            <wire x2="2080" y1="1040" y2="1040" x1="1872" />
        </branch>
        <branch name="S(3)">
            <wire x2="1888" y1="1760" y2="1760" x1="1680" />
            <wire x2="1888" y1="1136" y2="1760" x1="1888" />
            <wire x2="2080" y1="1136" y2="1136" x1="1888" />
        </branch>
        <branch name="Co">
            <wire x2="2112" y1="1952" y2="1952" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1952" name="Co" orien="R0" />
    </sheet>
</drawing>