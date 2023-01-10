<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="s(1:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="l0" />
        <signal name="l1" />
        <signal name="l2" />
        <signal name="l3" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="o" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="l0" />
        <port polarity="Input" name="l1" />
        <port polarity="Input" name="l2" />
        <port polarity="Input" name="l3" />
        <port polarity="Output" name="o" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="l0" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="l1" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="l2" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="l3" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_13">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="528" y="192" name="XLXI_1" orien="R0" />
        <instance x="528" y="336" name="XLXI_2" orien="R0" />
        <branch name="s(1)">
            <wire x2="352" y1="160" y2="160" x1="336" />
            <wire x2="512" y1="160" y2="160" x1="352" />
            <wire x2="528" y1="160" y2="160" x1="512" />
            <wire x2="512" y1="160" y2="480" x1="512" />
            <wire x2="1104" y1="480" y2="480" x1="512" />
            <wire x2="512" y1="480" y2="656" x1="512" />
            <wire x2="1104" y1="656" y2="656" x1="512" />
        </branch>
        <branch name="s(0)">
            <wire x2="352" y1="304" y2="304" x1="336" />
            <wire x2="448" y1="304" y2="304" x1="352" />
            <wire x2="528" y1="304" y2="304" x1="448" />
            <wire x2="448" y1="304" y2="368" x1="448" />
            <wire x2="448" y1="368" y2="384" x1="448" />
            <wire x2="448" y1="384" y2="720" x1="448" />
            <wire x2="1104" y1="720" y2="720" x1="448" />
            <wire x2="1104" y1="368" y2="368" x1="448" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="256" y1="224" y2="224" x1="240" />
            <wire x2="256" y1="224" y2="240" x1="256" />
            <wire x2="256" y1="240" y2="304" x1="256" />
            <wire x2="256" y1="160" y2="224" x1="256" />
        </branch>
        <iomarker fontsize="28" x="240" y="224" name="s(1:0)" orien="R180" />
        <bustap x2="352" y1="160" y2="160" x1="256" />
        <bustap x2="352" y1="304" y2="304" x1="256" />
        <instance x="1104" y="256" name="XLXI_5" orien="R0" />
        <instance x="1104" y="432" name="XLXI_6" orien="R0" />
        <instance x="1104" y="608" name="XLXI_7" orien="R0" />
        <instance x="1104" y="784" name="XLXI_8" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1056" y1="160" y2="160" x1="752" />
            <wire x2="1056" y1="160" y2="304" x1="1056" />
            <wire x2="1104" y1="304" y2="304" x1="1056" />
            <wire x2="1056" y1="128" y2="160" x1="1056" />
            <wire x2="1104" y1="128" y2="128" x1="1056" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1008" y1="304" y2="304" x1="752" />
            <wire x2="1008" y1="304" y2="544" x1="1008" />
            <wire x2="1104" y1="544" y2="544" x1="1008" />
            <wire x2="1008" y1="192" y2="304" x1="1008" />
            <wire x2="1104" y1="192" y2="192" x1="1008" />
        </branch>
        <instance x="1664" y="240" name="XLXI_9" orien="R0" />
        <instance x="1664" y="416" name="XLXI_10" orien="R0" />
        <instance x="1664" y="608" name="XLXI_11" orien="R0" />
        <instance x="1664" y="784" name="XLXI_12" orien="R0" />
        <branch name="l0">
            <wire x2="1408" y1="800" y2="800" x1="640" />
            <wire x2="1408" y1="112" y2="800" x1="1408" />
            <wire x2="1664" y1="112" y2="112" x1="1408" />
        </branch>
        <branch name="l1">
            <wire x2="1456" y1="880" y2="880" x1="640" />
            <wire x2="1456" y1="288" y2="880" x1="1456" />
            <wire x2="1664" y1="288" y2="288" x1="1456" />
        </branch>
        <branch name="l2">
            <wire x2="1504" y1="944" y2="944" x1="640" />
            <wire x2="1504" y1="480" y2="944" x1="1504" />
            <wire x2="1664" y1="480" y2="480" x1="1504" />
        </branch>
        <branch name="l3">
            <wire x2="1568" y1="1008" y2="1008" x1="640" />
            <wire x2="1568" y1="656" y2="1008" x1="1568" />
            <wire x2="1664" y1="656" y2="656" x1="1568" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1504" y1="160" y2="160" x1="1360" />
            <wire x2="1504" y1="160" y2="176" x1="1504" />
            <wire x2="1664" y1="176" y2="176" x1="1504" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1504" y1="336" y2="336" x1="1360" />
            <wire x2="1504" y1="336" y2="352" x1="1504" />
            <wire x2="1664" y1="352" y2="352" x1="1504" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1488" y1="512" y2="512" x1="1360" />
            <wire x2="1488" y1="512" y2="544" x1="1488" />
            <wire x2="1664" y1="544" y2="544" x1="1488" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1488" y1="688" y2="688" x1="1360" />
            <wire x2="1488" y1="688" y2="720" x1="1488" />
            <wire x2="1664" y1="720" y2="720" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="640" y="800" name="l0" orien="R180" />
        <iomarker fontsize="28" x="640" y="880" name="l1" orien="R180" />
        <iomarker fontsize="28" x="640" y="944" name="l2" orien="R180" />
        <iomarker fontsize="28" x="640" y="1008" name="l3" orien="R180" />
        <instance x="2128" y="560" name="XLXI_13" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2128" y1="144" y2="144" x1="1920" />
            <wire x2="2128" y1="144" y2="304" x1="2128" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2016" y1="320" y2="320" x1="1920" />
            <wire x2="2016" y1="320" y2="368" x1="2016" />
            <wire x2="2128" y1="368" y2="368" x1="2016" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2016" y1="512" y2="512" x1="1920" />
            <wire x2="2016" y1="432" y2="512" x1="2016" />
            <wire x2="2128" y1="432" y2="432" x1="2016" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2128" y1="688" y2="688" x1="1920" />
            <wire x2="2128" y1="496" y2="688" x1="2128" />
        </branch>
        <branch name="o">
            <wire x2="2512" y1="400" y2="400" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2512" y="400" name="o" orien="R0" />
    </sheet>
</drawing>