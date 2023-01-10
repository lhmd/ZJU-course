<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(1:0)" />
        <signal name="S(0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10(1:0)" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="XLXN_15(3:0)" />
        <signal name="XLXN_16(3:0)" />
        <signal name="XLXN_17(3:0)" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_19(3:0)" />
        <signal name="XLXN_20(3:0)" />
        <signal name="C(3:0)" />
        <signal name="Co" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="C(3:0)" />
        <port polarity="Output" name="Co" />
        <blockdef name="AddSub4b">
            <timestamp>2022-10-25T4:11:29</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="myAnd2b4">
            <timestamp>2022-10-25T6:59:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="myOr2b4">
            <timestamp>2022-10-25T6:59:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1">
            <timestamp>2022-10-25T7:1:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Mux4to14b">
            <timestamp>2022-10-24T14:12:30</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
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
        <block symbolname="AddSub4b" name="XLXI_1">
            <blockpin signalname="S(0)" name="Ctrl" />
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="S(3:0)" />
            <blockpin signalname="XLXN_6" name="Co" />
        </block>
        <block symbolname="myAnd2b4" name="XLXI_2">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="C(3:0)" />
        </block>
        <block symbolname="myOr2b4" name="XLXI_3">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="C(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_4">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="XLXN_8" name="I3" />
            <blockpin signalname="S(1:0)" name="s(1:0)" />
            <blockpin signalname="Co" name="o" />
        </block>
        <block symbolname="Mux4to14b" name="XLXI_5">
            <blockpin signalname="S(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="I1(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="I0(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="I2(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="I3(3:0)" />
            <blockpin signalname="C(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_8" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="880" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1040" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1040" y="1552" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1968" y="1616" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1952" y="944" name="XLXI_5" orien="R0">
        </instance>
        <branch name="S(1:0)">
            <wire x2="816" y1="448" y2="448" x1="512" />
            <wire x2="896" y1="448" y2="448" x1="816" />
            <wire x2="896" y1="448" y2="608" x1="896" />
            <wire x2="1776" y1="608" y2="608" x1="896" />
            <wire x2="1776" y1="608" y2="1584" x1="1776" />
            <wire x2="1968" y1="1584" y2="1584" x1="1776" />
            <wire x2="1840" y1="608" y2="608" x1="1776" />
            <wire x2="1840" y1="608" y2="656" x1="1840" />
            <wire x2="1952" y1="656" y2="656" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="512" y="448" name="S(1:0)" orien="R180" />
        <bustap x2="816" y1="448" y2="544" x1="816" />
        <branch name="S(0)">
            <wire x2="816" y1="544" y2="720" x1="816" />
            <wire x2="1040" y1="720" y2="720" x1="816" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="1680" y1="720" y2="720" x1="1424" />
            <wire x2="1680" y1="720" y2="784" x1="1680" />
            <wire x2="1952" y1="784" y2="784" x1="1680" />
            <wire x2="1952" y1="720" y2="720" x1="1680" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1680" y1="1200" y2="1200" x1="1424" />
            <wire x2="1680" y1="848" y2="1200" x1="1680" />
            <wire x2="1952" y1="848" y2="848" x1="1680" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1696" y1="1456" y2="1456" x1="1424" />
            <wire x2="1696" y1="912" y2="1456" x1="1696" />
            <wire x2="1952" y1="912" y2="912" x1="1696" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1664" y1="848" y2="848" x1="1424" />
            <wire x2="1664" y1="848" y2="1328" x1="1664" />
            <wire x2="1968" y1="1328" y2="1328" x1="1664" />
            <wire x2="1664" y1="1328" y2="1392" x1="1664" />
            <wire x2="1968" y1="1392" y2="1392" x1="1664" />
        </branch>
        <instance x="1680" y="1696" name="XLXI_6" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1968" y1="1456" y2="1456" x1="1744" />
            <wire x2="1744" y1="1456" y2="1520" x1="1744" />
            <wire x2="1744" y1="1520" y2="1568" x1="1744" />
            <wire x2="1968" y1="1520" y2="1520" x1="1744" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="784" y1="832" y2="832" x1="368" />
            <wire x2="784" y1="832" y2="848" x1="784" />
            <wire x2="1040" y1="848" y2="848" x1="784" />
            <wire x2="784" y1="848" y2="1264" x1="784" />
            <wire x2="1040" y1="1264" y2="1264" x1="784" />
            <wire x2="784" y1="1264" y2="1520" x1="784" />
            <wire x2="1040" y1="1520" y2="1520" x1="784" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="848" y1="784" y2="784" x1="368" />
            <wire x2="1040" y1="784" y2="784" x1="848" />
            <wire x2="848" y1="784" y2="1200" x1="848" />
            <wire x2="1040" y1="1200" y2="1200" x1="848" />
            <wire x2="848" y1="1200" y2="1456" x1="848" />
            <wire x2="1040" y1="1456" y2="1456" x1="848" />
        </branch>
        <iomarker fontsize="28" x="368" y="832" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="784" name="A(3:0)" orien="R180" />
        <branch name="C(3:0)">
            <wire x2="2560" y1="656" y2="656" x1="2336" />
        </branch>
        <branch name="Co">
            <wire x2="2528" y1="1328" y2="1328" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="2560" y="656" name="C(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1328" name="Co" orien="R0" />
    </sheet>
</drawing>