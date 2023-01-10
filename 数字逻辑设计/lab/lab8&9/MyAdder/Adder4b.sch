<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="Cin" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="A(3)" />
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="S(3:0)" />
        <signal name="S(3)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="Cout" />
        <port polarity="Input" name="Cin" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="S(3:0)" />
        <port polarity="Output" name="Cout" />
        <blockdef name="Adder1b">
            <timestamp>2020-11-20T5:4:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Adder1b" name="XLXI_1">
            <blockpin signalname="Cin" name="C" />
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="XLXN_1" name="Cout" />
            <blockpin signalname="S(0)" name="S" />
        </block>
        <block symbolname="Adder1b" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="XLXN_2" name="Cout" />
            <blockpin signalname="S(1)" name="S" />
        </block>
        <block symbolname="Adder1b" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="XLXN_3" name="Cout" />
            <blockpin signalname="S(2)" name="S" />
        </block>
        <block symbolname="Adder1b" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="Cout" name="Cout" />
            <blockpin signalname="S(3)" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="864" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1424" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1888" y1="912" y2="912" x1="1360" />
            <wire x2="1360" y1="912" y2="1040" x1="1360" />
            <wire x2="1424" y1="1040" y2="1040" x1="1360" />
            <wire x2="1888" y1="704" y2="704" x1="1808" />
            <wire x2="1888" y1="704" y2="912" x1="1888" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1360" y1="1680" y2="1840" x1="1360" />
            <wire x2="1424" y1="1840" y2="1840" x1="1360" />
            <wire x2="1888" y1="1680" y2="1680" x1="1360" />
            <wire x2="1888" y1="1440" y2="1440" x1="1808" />
            <wire x2="1888" y1="1440" y2="1680" x1="1888" />
        </branch>
        <instance x="1424" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1424" y="1600" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1888" y1="1296" y2="1296" x1="1360" />
            <wire x2="1360" y1="1296" y2="1440" x1="1360" />
            <wire x2="1424" y1="1440" y2="1440" x1="1360" />
            <wire x2="1888" y1="1040" y2="1040" x1="1808" />
            <wire x2="1888" y1="1040" y2="1296" x1="1888" />
        </branch>
        <branch name="Cin">
            <wire x2="1424" y1="704" y2="704" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="704" name="Cin" orien="R180" />
        <branch name="A(3:0)">
            <wire x2="960" y1="640" y2="768" x1="960" />
            <wire x2="960" y1="768" y2="1104" x1="960" />
            <wire x2="960" y1="1104" y2="1504" x1="960" />
            <wire x2="960" y1="1504" y2="1904" x1="960" />
            <wire x2="960" y1="1904" y2="2144" x1="960" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1152" y1="640" y2="832" x1="1152" />
            <wire x2="1152" y1="832" y2="1168" x1="1152" />
            <wire x2="1152" y1="1168" y2="1568" x1="1152" />
            <wire x2="1152" y1="1568" y2="1968" x1="1152" />
            <wire x2="1152" y1="1968" y2="2144" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="960" y="640" name="A(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1152" y="640" name="B(3:0)" orien="R270" />
        <bustap x2="1248" y1="1968" y2="1968" x1="1152" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="1968" type="branch" />
            <wire x2="1336" y1="1968" y2="1968" x1="1248" />
            <wire x2="1424" y1="1968" y2="1968" x1="1336" />
        </branch>
        <bustap x2="1248" y1="1568" y2="1568" x1="1152" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="1568" type="branch" />
            <wire x2="1336" y1="1568" y2="1568" x1="1248" />
            <wire x2="1424" y1="1568" y2="1568" x1="1336" />
        </branch>
        <bustap x2="1248" y1="1168" y2="1168" x1="1152" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="1168" type="branch" />
            <wire x2="1336" y1="1168" y2="1168" x1="1248" />
            <wire x2="1424" y1="1168" y2="1168" x1="1336" />
        </branch>
        <bustap x2="1248" y1="832" y2="832" x1="1152" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="832" type="branch" />
            <wire x2="1336" y1="832" y2="832" x1="1248" />
            <wire x2="1424" y1="832" y2="832" x1="1336" />
        </branch>
        <bustap x2="1056" y1="1904" y2="1904" x1="960" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1240" y="1904" type="branch" />
            <wire x2="1240" y1="1904" y2="1904" x1="1056" />
            <wire x2="1424" y1="1904" y2="1904" x1="1240" />
        </branch>
        <bustap x2="1056" y1="1504" y2="1504" x1="960" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1240" y="1504" type="branch" />
            <wire x2="1240" y1="1504" y2="1504" x1="1056" />
            <wire x2="1424" y1="1504" y2="1504" x1="1240" />
        </branch>
        <bustap x2="1056" y1="1104" y2="1104" x1="960" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1240" y="1104" type="branch" />
            <wire x2="1240" y1="1104" y2="1104" x1="1056" />
            <wire x2="1424" y1="1104" y2="1104" x1="1240" />
        </branch>
        <bustap x2="1056" y1="768" y2="768" x1="960" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1240" y="768" type="branch" />
            <wire x2="1240" y1="768" y2="768" x1="1056" />
            <wire x2="1424" y1="768" y2="768" x1="1240" />
        </branch>
        <iomarker fontsize="28" x="2176" y="640" name="S(3:0)" orien="R270" />
        <branch name="S(3:0)">
            <wire x2="2176" y1="640" y2="832" x1="2176" />
            <wire x2="2176" y1="832" y2="1168" x1="2176" />
            <wire x2="2176" y1="1168" y2="1568" x1="2176" />
            <wire x2="2176" y1="1568" y2="1968" x1="2176" />
            <wire x2="2176" y1="1968" y2="2160" x1="2176" />
        </branch>
        <bustap x2="2080" y1="1968" y2="1968" x1="2176" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="1968" type="branch" />
            <wire x2="1944" y1="1968" y2="1968" x1="1808" />
            <wire x2="2080" y1="1968" y2="1968" x1="1944" />
        </branch>
        <bustap x2="2080" y1="1568" y2="1568" x1="2176" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="1568" type="branch" />
            <wire x2="1944" y1="1568" y2="1568" x1="1808" />
            <wire x2="2080" y1="1568" y2="1568" x1="1944" />
        </branch>
        <bustap x2="2080" y1="1168" y2="1168" x1="2176" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="1168" type="branch" />
            <wire x2="1944" y1="1168" y2="1168" x1="1808" />
            <wire x2="2080" y1="1168" y2="1168" x1="1944" />
        </branch>
        <bustap x2="2080" y1="832" y2="832" x1="2176" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="832" type="branch" />
            <wire x2="1944" y1="832" y2="832" x1="1808" />
            <wire x2="2080" y1="832" y2="832" x1="1944" />
        </branch>
        <branch name="Cout">
            <wire x2="1840" y1="1840" y2="1840" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1840" name="Cout" orien="R0" />
    </sheet>
</drawing>