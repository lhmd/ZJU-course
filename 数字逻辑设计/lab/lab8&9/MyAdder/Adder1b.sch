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
        <signal name="Cout" />
        <signal name="S" />
        <signal name="XLXN_6" />
        <signal name="C" />
        <signal name="A" />
        <signal name="B" />
        <port polarity="Output" name="Cout" />
        <port polarity="Output" name="S" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_6">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="Cout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="608" name="XLXI_1" orien="R0" />
        <instance x="768" y="400" name="XLXI_2" orien="R0" />
        <instance x="736" y="976" name="XLXI_3" orien="R0" />
        <instance x="736" y="1168" name="XLXI_4" orien="R0" />
        <instance x="736" y="1360" name="XLXI_5" orien="R0" />
        <instance x="1648" y="1168" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1648" y1="880" y2="880" x1="992" />
            <wire x2="1648" y1="880" y2="976" x1="1648" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1312" y1="1072" y2="1072" x1="992" />
            <wire x2="1312" y1="1040" y2="1072" x1="1312" />
            <wire x2="1648" y1="1040" y2="1040" x1="1312" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1648" y1="1264" y2="1264" x1="992" />
            <wire x2="1648" y1="1104" y2="1264" x1="1648" />
        </branch>
        <branch name="Cout">
            <wire x2="2192" y1="1040" y2="1040" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1040" name="Cout" orien="R0" />
        <branch name="S">
            <wire x2="2208" y1="512" y2="512" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="2208" y="512" name="S" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1120" y1="304" y2="304" x1="1024" />
            <wire x2="1120" y1="304" y2="480" x1="1120" />
            <wire x2="1216" y1="480" y2="480" x1="1120" />
        </branch>
        <branch name="C">
            <wire x2="656" y1="544" y2="544" x1="336" />
            <wire x2="1216" y1="544" y2="544" x1="656" />
            <wire x2="656" y1="544" y2="1088" x1="656" />
            <wire x2="656" y1="1088" y2="1104" x1="656" />
            <wire x2="736" y1="1104" y2="1104" x1="656" />
            <wire x2="656" y1="1104" y2="1296" x1="656" />
            <wire x2="736" y1="1296" y2="1296" x1="656" />
        </branch>
        <iomarker fontsize="28" x="336" y="544" name="C" orien="R180" />
        <branch name="A">
            <wire x2="496" y1="272" y2="272" x1="336" />
            <wire x2="768" y1="272" y2="272" x1="496" />
            <wire x2="496" y1="272" y2="848" x1="496" />
            <wire x2="736" y1="848" y2="848" x1="496" />
            <wire x2="496" y1="848" y2="1232" x1="496" />
            <wire x2="736" y1="1232" y2="1232" x1="496" />
        </branch>
        <iomarker fontsize="28" x="336" y="272" name="A" orien="R180" />
        <branch name="B">
            <wire x2="560" y1="336" y2="336" x1="336" />
            <wire x2="768" y1="336" y2="336" x1="560" />
            <wire x2="560" y1="336" y2="912" x1="560" />
            <wire x2="736" y1="912" y2="912" x1="560" />
            <wire x2="560" y1="912" y2="1040" x1="560" />
            <wire x2="736" y1="1040" y2="1040" x1="560" />
        </branch>
        <iomarker fontsize="28" x="336" y="336" name="B" orien="R180" />
    </sheet>
</drawing>