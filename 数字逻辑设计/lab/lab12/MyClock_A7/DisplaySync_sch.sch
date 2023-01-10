<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="HEX(3:0)" />
        <signal name="scan(1:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="Hexs(3:0)" />
        <signal name="points(3:0)" />
        <signal name="points(0)" />
        <signal name="points(1)" />
        <signal name="points(2)" />
        <signal name="points(3)" />
        <signal name="LES(3:0)" />
        <signal name="LES(0)" />
        <signal name="LES(1)" />
        <signal name="LES(2)" />
        <signal name="LES(3)" />
        <signal name="scan(0)" />
        <signal name="scan(1)" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="XLXN_9" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="AN(0)" />
        <signal name="AN(1)" />
        <signal name="AN(2)" />
        <signal name="AN(3)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Input" name="scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to1b4">
            <timestamp>2020-10-21T9:3:5</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1">
            <timestamp>2020-10-21T8:49:53</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
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
        <block symbolname="Mux4to1b4" name="XLXI_1">
            <blockpin signalname="scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(7:4)" name="l1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="l2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="l3(3:0)" />
            <blockpin signalname="Hexs(3:0)" name="l0(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_2">
            <blockpin signalname="scan(1:0)" name="s(1:0)" />
            <blockpin signalname="points(0)" name="l0" />
            <blockpin signalname="points(1)" name="l1" />
            <blockpin signalname="points(2)" name="l2" />
            <blockpin signalname="points(3)" name="l3" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_3">
            <blockpin signalname="scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0)" name="l0" />
            <blockpin signalname="LES(1)" name="l1" />
            <blockpin signalname="LES(2)" name="l2" />
            <blockpin signalname="LES(3)" name="l3" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="P" />
        </block>
        <block symbolname="d2_4e" name="XLXI_6">
            <blockpin signalname="scan(0)" name="A0" />
            <blockpin signalname="scan(1)" name="A1" />
            <blockpin signalname="XLXN_9" name="E" />
            <blockpin signalname="XLXN_14" name="D0" />
            <blockpin signalname="XLXN_15" name="D1" />
            <blockpin signalname="XLXN_16" name="D2" />
            <blockpin signalname="XLXN_17" name="D3" />
        </block>
        <block symbolname="inv4" name="XLXI_7">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_14" name="I3" />
            <blockpin signalname="AN(3)" name="O0" />
            <blockpin signalname="AN(2)" name="O1" />
            <blockpin signalname="AN(1)" name="O2" />
            <blockpin signalname="AN(0)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="HEX(3:0)">
            <wire x2="1872" y1="896" y2="896" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1872" y="896" name="HEX(3:0)" orien="R0" />
        <branch name="scan(1:0)">
            <wire x2="1232" y1="816" y2="816" x1="960" />
            <wire x2="1232" y1="816" y2="896" x1="1232" />
            <wire x2="1328" y1="896" y2="896" x1="1232" />
            <wire x2="1232" y1="896" y2="1456" x1="1232" />
            <wire x2="1328" y1="1456" y2="1456" x1="1232" />
            <wire x2="1232" y1="1456" y2="1840" x1="1232" />
            <wire x2="1328" y1="1840" y2="1840" x1="1232" />
            <wire x2="1232" y1="1840" y2="2208" x1="1232" />
            <wire x2="1232" y1="2208" y2="2240" x1="1232" />
            <wire x2="1232" y1="2240" y2="2304" x1="1232" />
            <wire x2="1232" y1="2304" y2="2368" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="960" y="816" name="scan(1:0)" orien="R180" />
        <instance x="1328" y="1744" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1328" y="2128" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="784" y="1136" name="Hexs(15:0)" orien="R180" />
        <branch name="Hexs(7:4)">
            <wire x2="1248" y1="960" y2="960" x1="1200" />
            <wire x2="1296" y1="960" y2="960" x1="1248" />
            <wire x2="1328" y1="960" y2="960" x1="1296" />
        </branch>
        <branch name="Hexs(15:0)">
            <wire x2="1104" y1="1136" y2="1136" x1="784" />
            <wire x2="1104" y1="1136" y2="1216" x1="1104" />
            <wire x2="1104" y1="1216" y2="1280" x1="1104" />
            <wire x2="1104" y1="944" y2="960" x1="1104" />
            <wire x2="1104" y1="960" y2="1024" x1="1104" />
            <wire x2="1104" y1="1024" y2="1136" x1="1104" />
        </branch>
        <bustap x2="1200" y1="960" y2="960" x1="1104" />
        <bustap x2="1200" y1="1024" y2="1024" x1="1104" />
        <bustap x2="1200" y1="1216" y2="1216" x1="1104" />
        <bustap x2="1200" y1="1280" y2="1280" x1="1104" />
        <branch name="Hexs(11:8)">
            <wire x2="1328" y1="1024" y2="1024" x1="1200" />
        </branch>
        <branch name="Hexs(15:12)">
            <wire x2="1328" y1="1216" y2="1216" x1="1200" />
        </branch>
        <branch name="Hexs(3:0)">
            <wire x2="1328" y1="1280" y2="1280" x1="1200" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="1152" y1="1504" y2="1504" x1="800" />
            <wire x2="1152" y1="1504" y2="1520" x1="1152" />
            <wire x2="1152" y1="1520" y2="1584" x1="1152" />
            <wire x2="1152" y1="1584" y2="1648" x1="1152" />
            <wire x2="1152" y1="1648" y2="1712" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="800" y="1504" name="points(3:0)" orien="R180" />
        <bustap x2="1248" y1="1520" y2="1520" x1="1152" />
        <bustap x2="1248" y1="1584" y2="1584" x1="1152" />
        <bustap x2="1248" y1="1648" y2="1648" x1="1152" />
        <bustap x2="1248" y1="1712" y2="1712" x1="1152" />
        <branch name="points(0)">
            <wire x2="1328" y1="1520" y2="1520" x1="1248" />
        </branch>
        <branch name="points(1)">
            <wire x2="1328" y1="1584" y2="1584" x1="1248" />
        </branch>
        <branch name="points(2)">
            <wire x2="1328" y1="1648" y2="1648" x1="1248" />
        </branch>
        <branch name="points(3)">
            <wire x2="1328" y1="1712" y2="1712" x1="1248" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="1152" y1="1872" y2="1872" x1="800" />
            <wire x2="1152" y1="1872" y2="1904" x1="1152" />
            <wire x2="1152" y1="1904" y2="1968" x1="1152" />
            <wire x2="1152" y1="1968" y2="2032" x1="1152" />
            <wire x2="1152" y1="2032" y2="2096" x1="1152" />
            <wire x2="1152" y1="2096" y2="2112" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="800" y="1872" name="LES(3:0)" orien="R180" />
        <bustap x2="1248" y1="1904" y2="1904" x1="1152" />
        <bustap x2="1248" y1="1968" y2="1968" x1="1152" />
        <bustap x2="1248" y1="2032" y2="2032" x1="1152" />
        <bustap x2="1248" y1="2096" y2="2096" x1="1152" />
        <branch name="LES(0)">
            <wire x2="1328" y1="1904" y2="1904" x1="1248" />
        </branch>
        <branch name="LES(1)">
            <wire x2="1328" y1="1968" y2="1968" x1="1248" />
        </branch>
        <branch name="LES(2)">
            <wire x2="1328" y1="2032" y2="2032" x1="1248" />
        </branch>
        <branch name="LES(3)">
            <wire x2="1328" y1="2096" y2="2096" x1="1248" />
        </branch>
        <bustap x2="1328" y1="2240" y2="2240" x1="1232" />
        <bustap x2="1328" y1="2304" y2="2304" x1="1232" />
        <branch name="scan(0)">
            <wire x2="1408" y1="2240" y2="2240" x1="1328" />
            <wire x2="1472" y1="2240" y2="2240" x1="1408" />
            <wire x2="1472" y1="2240" y2="2304" x1="1472" />
            <wire x2="1552" y1="2304" y2="2304" x1="1472" />
        </branch>
        <branch name="scan(1)">
            <wire x2="1408" y1="2304" y2="2304" x1="1328" />
            <wire x2="1408" y1="2304" y2="2368" x1="1408" />
            <wire x2="1552" y1="2368" y2="2368" x1="1408" />
        </branch>
        <branch name="p">
            <wire x2="1920" y1="1456" y2="1456" x1="1712" />
        </branch>
        <branch name="LE">
            <wire x2="1936" y1="1840" y2="1840" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1456" name="p" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1840" name="LE" orien="R0" />
        <instance x="1552" y="2624" name="XLXI_6" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2384" y1="2288" y2="2304" x1="2384" />
            <wire x2="2384" y1="2304" y2="2352" x1="2384" />
            <wire x2="2624" y1="2352" y2="2352" x1="2384" />
            <wire x2="2384" y1="2352" y2="2368" x1="2384" />
            <wire x2="2384" y1="2368" y2="2432" x1="2384" />
            <wire x2="2384" y1="2432" y2="2496" x1="2384" />
        </branch>
        <bustap x2="2288" y1="2304" y2="2304" x1="2384" />
        <bustap x2="2288" y1="2368" y2="2368" x1="2384" />
        <bustap x2="2288" y1="2432" y2="2432" x1="2384" />
        <bustap x2="2288" y1="2496" y2="2496" x1="2384" />
        <iomarker fontsize="28" x="2624" y="2352" name="AN(3:0)" orien="R0" />
        <instance x="2016" y="2528" name="XLXI_7" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2016" y1="2304" y2="2304" x1="1936" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2016" y1="2368" y2="2368" x1="1936" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2016" y1="2432" y2="2432" x1="1936" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2016" y1="2496" y2="2496" x1="1936" />
        </branch>
        <branch name="AN(0)">
            <wire x2="2288" y1="2304" y2="2304" x1="2240" />
        </branch>
        <branch name="AN(1)">
            <wire x2="2288" y1="2368" y2="2368" x1="2240" />
        </branch>
        <branch name="AN(2)">
            <wire x2="2288" y1="2432" y2="2432" x1="2240" />
        </branch>
        <branch name="AN(3)">
            <wire x2="2288" y1="2496" y2="2496" x1="2240" />
        </branch>
        <instance x="912" y="2496" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="976" y1="2496" y2="2560" x1="976" />
            <wire x2="1024" y1="2560" y2="2560" x1="976" />
            <wire x2="1024" y1="2496" y2="2560" x1="1024" />
            <wire x2="1552" y1="2496" y2="2496" x1="1024" />
        </branch>
    </sheet>
</drawing>