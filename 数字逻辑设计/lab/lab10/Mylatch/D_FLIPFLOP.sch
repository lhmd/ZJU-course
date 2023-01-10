<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="R" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="D" />
        <signal name="C" />
        <signal name="S" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="S" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand3" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="S" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="S" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2432" y="1152" name="XLXI_1" orien="R0" />
        <instance x="2432" y="1648" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="2416" y1="1232" y2="1456" x1="2416" />
            <wire x2="2432" y1="1456" y2="1456" x1="2416" />
            <wire x2="2752" y1="1232" y2="1232" x1="2416" />
            <wire x2="2752" y1="1024" y2="1024" x1="2688" />
            <wire x2="2960" y1="1024" y2="1024" x1="2752" />
            <wire x2="2752" y1="1024" y2="1232" x1="2752" />
        </branch>
        <branch name="Qbar">
            <wire x2="2432" y1="1088" y2="1088" x1="2336" />
            <wire x2="2336" y1="1088" y2="1296" x1="2336" />
            <wire x2="2736" y1="1296" y2="1296" x1="2336" />
            <wire x2="2736" y1="1296" y2="1520" x1="2736" />
            <wire x2="3008" y1="1520" y2="1520" x1="2736" />
            <wire x2="2736" y1="1520" y2="1520" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2960" y="1024" name="Q" orien="R0" />
        <iomarker fontsize="28" x="3008" y="1520" name="Qbar" orien="R0" />
        <branch name="R">
            <wire x2="1328" y1="1168" y2="1168" x1="1232" />
            <wire x2="1232" y1="1168" y2="1664" x1="1232" />
            <wire x2="1328" y1="1664" y2="1664" x1="1232" />
            <wire x2="1232" y1="1664" y2="1856" x1="1232" />
            <wire x2="2432" y1="1856" y2="1856" x1="1232" />
            <wire x2="2496" y1="1856" y2="1856" x1="2432" />
            <wire x2="2432" y1="1584" y2="1856" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1856" name="R" orien="R0" />
        <instance x="1328" y="1056" name="XLXI_3" orien="R0" />
        <instance x="1328" y="1296" name="XLXI_4" orien="R0" />
        <instance x="1328" y="1520" name="XLXI_5" orien="R0" />
        <instance x="1328" y="1728" name="XLXI_6" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1328" y1="1040" y2="1104" x1="1328" />
            <wire x2="1664" y1="1040" y2="1040" x1="1328" />
            <wire x2="1664" y1="928" y2="928" x1="1584" />
            <wire x2="1664" y1="928" y2="1040" x1="1664" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1328" y1="992" y2="1024" x1="1328" />
            <wire x2="1616" y1="1024" y2="1024" x1="1328" />
            <wire x2="1616" y1="1024" y2="1168" x1="1616" />
            <wire x2="1872" y1="1168" y2="1168" x1="1616" />
            <wire x2="1616" y1="1168" y2="1248" x1="1616" />
            <wire x2="1328" y1="1248" y2="1328" x1="1328" />
            <wire x2="1616" y1="1248" y2="1248" x1="1328" />
            <wire x2="1616" y1="1168" y2="1168" x1="1584" />
            <wire x2="2432" y1="1024" y2="1024" x1="1872" />
            <wire x2="1872" y1="1024" y2="1168" x1="1872" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1248" y1="1472" y2="1536" x1="1248" />
            <wire x2="1328" y1="1536" y2="1536" x1="1248" />
            <wire x2="1648" y1="1472" y2="1472" x1="1248" />
            <wire x2="1648" y1="1392" y2="1392" x1="1584" />
            <wire x2="1888" y1="1392" y2="1392" x1="1648" />
            <wire x2="1888" y1="1392" y2="1520" x1="1888" />
            <wire x2="2432" y1="1520" y2="1520" x1="1888" />
            <wire x2="1648" y1="1392" y2="1472" x1="1648" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1328" y1="928" y2="928" x1="1200" />
            <wire x2="1200" y1="928" y2="1728" x1="1200" />
            <wire x2="1648" y1="1728" y2="1728" x1="1200" />
            <wire x2="1328" y1="1456" y2="1520" x1="1328" />
            <wire x2="1648" y1="1520" y2="1520" x1="1328" />
            <wire x2="1648" y1="1520" y2="1600" x1="1648" />
            <wire x2="1648" y1="1600" y2="1728" x1="1648" />
            <wire x2="1648" y1="1600" y2="1600" x1="1584" />
        </branch>
        <branch name="D">
            <wire x2="1328" y1="1600" y2="1600" x1="832" />
        </branch>
        <branch name="C">
            <wire x2="1312" y1="1312" y2="1312" x1="832" />
            <wire x2="1312" y1="1312" y2="1392" x1="1312" />
            <wire x2="1328" y1="1392" y2="1392" x1="1312" />
            <wire x2="1328" y1="1232" y2="1232" x1="1312" />
            <wire x2="1312" y1="1232" y2="1312" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="832" y="1600" name="D" orien="R180" />
        <branch name="S">
            <wire x2="1200" y1="800" y2="864" x1="1200" />
            <wire x2="1328" y1="864" y2="864" x1="1200" />
            <wire x2="2432" y1="800" y2="800" x1="1200" />
            <wire x2="2432" y1="800" y2="848" x1="2432" />
            <wire x2="2432" y1="848" y2="960" x1="2432" />
            <wire x2="2528" y1="848" y2="848" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2528" y="848" name="S" orien="R0" />
        <iomarker fontsize="28" x="832" y="1312" name="C" orien="R180" />
    </sheet>
</drawing>