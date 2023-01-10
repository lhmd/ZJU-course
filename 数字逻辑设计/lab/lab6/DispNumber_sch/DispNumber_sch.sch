<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="SEGMEN(7:0)" />
        <signal name="BIN(1:0)" />
        <signal name="SW(3)" />
        <signal name="SW(2)" />
        <signal name="SW(1)" />
        <signal name="SW(0)" />
        <signal name="BIN(1)" />
        <signal name="BIN(0)" />
        <signal name="SEGMEN(7)" />
        <signal name="SEGMEN(0)" />
        <signal name="SEGMEN(6)" />
        <signal name="SEGMEN(5)" />
        <signal name="SEGMEN(4)" />
        <signal name="SEGMEN(3)" />
        <signal name="SEGMEN(2)" />
        <signal name="SEGMEN(1)" />
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
        <port polarity="Output" name="SEGMEN(7:0)" />
        <port polarity="Input" name="BIN(1:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="MyMC14495">
            <timestamp>2022-10-24T8:20:13</timestamp>
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
        <block symbolname="MyMC14495" name="XLXI_1">
            <blockpin signalname="BIN(1)" name="point" />
            <blockpin signalname="BIN(0)" name="LE" />
            <blockpin signalname="SW(3)" name="D3" />
            <blockpin signalname="SW(2)" name="D2" />
            <blockpin signalname="SW(1)" name="D1" />
            <blockpin signalname="SW(0)" name="D0" />
            <blockpin signalname="SEGMEN(7)" name="p" />
            <blockpin signalname="SEGMEN(0)" name="a" />
            <blockpin signalname="SEGMEN(1)" name="b" />
            <blockpin signalname="SEGMEN(2)" name="c" />
            <blockpin signalname="SEGMEN(3)" name="d" />
            <blockpin signalname="SEGMEN(4)" name="e" />
            <blockpin signalname="SEGMEN(5)" name="f" />
            <blockpin signalname="SEGMEN(6)" name="g" />
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
        <instance x="1344" y="992" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SW(7:0)">
            <wire x2="1120" y1="416" y2="512" x1="1120" />
            <wire x2="1120" y1="512" y2="672" x1="1120" />
            <wire x2="1120" y1="672" y2="752" x1="1120" />
            <wire x2="1120" y1="752" y2="832" x1="1120" />
            <wire x2="1120" y1="832" y2="912" x1="1120" />
            <wire x2="1120" y1="912" y2="1216" x1="1120" />
            <wire x2="1120" y1="1216" y2="1280" x1="1120" />
            <wire x2="1120" y1="1280" y2="1344" x1="1120" />
            <wire x2="1120" y1="1344" y2="1408" x1="1120" />
            <wire x2="1120" y1="1408" y2="1584" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="416" name="SW(7:0)" orien="R270" />
        <branch name="SEGMEN(7:0)">
            <wire x2="1936" y1="304" y2="512" x1="1936" />
            <wire x2="1936" y1="512" y2="576" x1="1936" />
            <wire x2="1936" y1="576" y2="592" x1="1936" />
            <wire x2="1936" y1="592" y2="640" x1="1936" />
            <wire x2="1936" y1="640" y2="704" x1="1936" />
            <wire x2="1936" y1="704" y2="768" x1="1936" />
            <wire x2="1936" y1="768" y2="832" x1="1936" />
            <wire x2="1936" y1="832" y2="896" x1="1936" />
            <wire x2="1936" y1="896" y2="960" x1="1936" />
            <wire x2="1936" y1="960" y2="992" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1936" y="304" name="SEGMEN(7:0)" orien="R270" />
        <bustap x2="1216" y1="672" y2="672" x1="1120" />
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="672" type="branch" />
            <wire x2="1280" y1="672" y2="672" x1="1216" />
            <wire x2="1344" y1="672" y2="672" x1="1280" />
        </branch>
        <bustap x2="1216" y1="752" y2="752" x1="1120" />
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="752" type="branch" />
            <wire x2="1280" y1="752" y2="752" x1="1216" />
            <wire x2="1344" y1="752" y2="752" x1="1280" />
        </branch>
        <bustap x2="1216" y1="832" y2="832" x1="1120" />
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="832" type="branch" />
            <wire x2="1280" y1="832" y2="832" x1="1216" />
            <wire x2="1344" y1="832" y2="832" x1="1280" />
        </branch>
        <bustap x2="1216" y1="912" y2="912" x1="1120" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="912" type="branch" />
            <wire x2="1280" y1="912" y2="912" x1="1216" />
            <wire x2="1344" y1="912" y2="912" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1232" y="448" name="BIN(1:0)" orien="R270" />
        <branch name="BIN(1:0)">
            <wire x2="1232" y1="448" y2="512" x1="1232" />
            <wire x2="1232" y1="512" y2="592" x1="1232" />
            <wire x2="1232" y1="592" y2="608" x1="1232" />
        </branch>
        <bustap x2="1328" y1="512" y2="512" x1="1232" />
        <branch name="BIN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="512" type="branch" />
            <wire x2="1336" y1="512" y2="512" x1="1328" />
            <wire x2="1344" y1="512" y2="512" x1="1336" />
        </branch>
        <bustap x2="1328" y1="592" y2="592" x1="1232" />
        <branch name="BIN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="592" type="branch" />
            <wire x2="1336" y1="592" y2="592" x1="1328" />
            <wire x2="1344" y1="592" y2="592" x1="1336" />
        </branch>
        <bustap x2="1840" y1="512" y2="512" x1="1936" />
        <branch name="SEGMEN(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="512" type="branch" />
            <wire x2="1784" y1="512" y2="512" x1="1728" />
            <wire x2="1840" y1="512" y2="512" x1="1784" />
        </branch>
        <bustap x2="1840" y1="576" y2="576" x1="1936" />
        <branch name="SEGMEN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="576" type="branch" />
            <wire x2="1784" y1="576" y2="576" x1="1728" />
            <wire x2="1840" y1="576" y2="576" x1="1784" />
        </branch>
        <bustap x2="1840" y1="960" y2="960" x1="1936" />
        <branch name="SEGMEN(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="960" type="branch" />
            <wire x2="1784" y1="960" y2="960" x1="1728" />
            <wire x2="1840" y1="960" y2="960" x1="1784" />
        </branch>
        <bustap x2="1840" y1="896" y2="896" x1="1936" />
        <branch name="SEGMEN(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="896" type="branch" />
            <wire x2="1784" y1="896" y2="896" x1="1728" />
            <wire x2="1840" y1="896" y2="896" x1="1784" />
        </branch>
        <bustap x2="1840" y1="832" y2="832" x1="1936" />
        <branch name="SEGMEN(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="832" type="branch" />
            <wire x2="1784" y1="832" y2="832" x1="1728" />
            <wire x2="1840" y1="832" y2="832" x1="1784" />
        </branch>
        <bustap x2="1840" y1="768" y2="768" x1="1936" />
        <branch name="SEGMEN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="768" type="branch" />
            <wire x2="1784" y1="768" y2="768" x1="1728" />
            <wire x2="1840" y1="768" y2="768" x1="1784" />
        </branch>
        <bustap x2="1840" y1="704" y2="704" x1="1936" />
        <branch name="SEGMEN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="704" type="branch" />
            <wire x2="1784" y1="704" y2="704" x1="1728" />
            <wire x2="1840" y1="704" y2="704" x1="1784" />
        </branch>
        <bustap x2="1840" y1="640" y2="640" x1="1936" />
        <branch name="SEGMEN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="640" type="branch" />
            <wire x2="1784" y1="640" y2="640" x1="1728" />
            <wire x2="1840" y1="640" y2="640" x1="1784" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1936" y1="1104" y2="1216" x1="1936" />
            <wire x2="1936" y1="1216" y2="1280" x1="1936" />
            <wire x2="1936" y1="1280" y2="1344" x1="1936" />
            <wire x2="1936" y1="1344" y2="1408" x1="1936" />
            <wire x2="1936" y1="1408" y2="1600" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1600" name="AN(3:0)" orien="R90" />
        <instance x="1344" y="1440" name="XLXI_2" orien="R0" />
        <bustap x2="1840" y1="1216" y2="1216" x1="1936" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="1216" type="branch" />
            <wire x2="1704" y1="1216" y2="1216" x1="1568" />
            <wire x2="1840" y1="1216" y2="1216" x1="1704" />
        </branch>
        <bustap x2="1840" y1="1280" y2="1280" x1="1936" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="1280" type="branch" />
            <wire x2="1704" y1="1280" y2="1280" x1="1568" />
            <wire x2="1840" y1="1280" y2="1280" x1="1704" />
        </branch>
        <bustap x2="1840" y1="1344" y2="1344" x1="1936" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="1344" type="branch" />
            <wire x2="1704" y1="1344" y2="1344" x1="1568" />
            <wire x2="1840" y1="1344" y2="1344" x1="1704" />
        </branch>
        <bustap x2="1840" y1="1408" y2="1408" x1="1936" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="1408" type="branch" />
            <wire x2="1704" y1="1408" y2="1408" x1="1568" />
            <wire x2="1840" y1="1408" y2="1408" x1="1704" />
        </branch>
        <bustap x2="1216" y1="1216" y2="1216" x1="1120" />
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1216" type="branch" />
            <wire x2="1280" y1="1216" y2="1216" x1="1216" />
            <wire x2="1344" y1="1216" y2="1216" x1="1280" />
        </branch>
        <bustap x2="1216" y1="1280" y2="1280" x1="1120" />
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1280" type="branch" />
            <wire x2="1280" y1="1280" y2="1280" x1="1216" />
            <wire x2="1344" y1="1280" y2="1280" x1="1280" />
        </branch>
        <bustap x2="1216" y1="1344" y2="1344" x1="1120" />
        <branch name="SW(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1344" type="branch" />
            <wire x2="1280" y1="1344" y2="1344" x1="1216" />
            <wire x2="1344" y1="1344" y2="1344" x1="1280" />
        </branch>
        <bustap x2="1216" y1="1408" y2="1408" x1="1120" />
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1408" type="branch" />
            <wire x2="1280" y1="1408" y2="1408" x1="1216" />
            <wire x2="1344" y1="1408" y2="1408" x1="1280" />
        </branch>
    </sheet>
</drawing>