<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="Qb" />
        <signal name="Qc" />
        <signal name="Qd" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Qa" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_18" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="Rc" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Qb" />
        <port polarity="Output" name="Qc" />
        <port polarity="Output" name="Qd" />
        <port polarity="Output" name="Qa" />
        <port polarity="Output" name="Rc" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="nor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_18" name="D" />
            <blockpin signalname="Qa" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_10" name="D" />
            <blockpin signalname="Qb" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_11" name="D" />
            <blockpin signalname="Qc" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_12" name="D" />
            <blockpin signalname="Qd" name="Q" />
        </block>
        <block symbolname="xnor2" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="Qa" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_7">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="Qa" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="Qb" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_11">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="Qc" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_14">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="Qd" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="nor4" name="XLXI_16">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_18" name="I3" />
            <blockpin signalname="Rc" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <instance x="1328" y="448" name="XLXI_1" orien="R0" />
        <instance x="1328" y="832" name="XLXI_2" orien="R0" />
        <instance x="1328" y="1200" name="XLXI_3" orien="R0" />
        <instance x="1328" y="1584" name="XLXI_4" orien="R0" />
        <branch name="clk">
            <wire x2="1280" y1="320" y2="320" x1="176" />
            <wire x2="1328" y1="320" y2="320" x1="1280" />
            <wire x2="1280" y1="320" y2="704" x1="1280" />
            <wire x2="1328" y1="704" y2="704" x1="1280" />
            <wire x2="1280" y1="704" y2="1072" x1="1280" />
            <wire x2="1328" y1="1072" y2="1072" x1="1280" />
            <wire x2="1280" y1="1072" y2="1456" x1="1280" />
            <wire x2="1328" y1="1456" y2="1456" x1="1280" />
        </branch>
        <branch name="Qc">
            <wire x2="336" y1="800" y2="800" x1="320" />
            <wire x2="1872" y1="800" y2="800" x1="336" />
            <wire x2="1872" y1="800" y2="944" x1="1872" />
            <wire x2="2032" y1="944" y2="944" x1="1872" />
            <wire x2="320" y1="800" y2="976" x1="320" />
            <wire x2="368" y1="976" y2="976" x1="320" />
            <wire x2="1872" y1="944" y2="944" x1="1712" />
        </branch>
        <branch name="Qd">
            <wire x2="1872" y1="1216" y2="1216" x1="320" />
            <wire x2="1872" y1="1216" y2="1328" x1="1872" />
            <wire x2="2032" y1="1328" y2="1328" x1="1872" />
            <wire x2="320" y1="1216" y2="1360" x1="320" />
            <wire x2="368" y1="1360" y2="1360" x1="320" />
            <wire x2="1872" y1="1328" y2="1328" x1="1712" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1328" y1="576" y2="576" x1="1264" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1328" y1="944" y2="944" x1="1264" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1328" y1="1328" y2="1328" x1="1264" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="672" y1="608" y2="608" x1="592" />
            <wire x2="1008" y1="608" y2="608" x1="672" />
            <wire x2="672" y1="608" y2="752" x1="672" />
            <wire x2="720" y1="752" y2="752" x1="672" />
            <wire x2="672" y1="752" y2="1136" x1="672" />
            <wire x2="720" y1="1136" y2="1136" x1="672" />
            <wire x2="672" y1="1136" y2="1568" x1="672" />
            <wire x2="720" y1="1568" y2="1568" x1="672" />
        </branch>
        <instance x="1008" y="672" name="XLXI_5" orien="R0" />
        <instance x="1008" y="1040" name="XLXI_6" orien="R0" />
        <instance x="1008" y="1424" name="XLXI_7" orien="R0" />
        <instance x="720" y="816" name="XLXI_11" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="688" y1="192" y2="192" x1="592" />
            <wire x2="1328" y1="192" y2="192" x1="688" />
            <wire x2="688" y1="192" y2="688" x1="688" />
            <wire x2="720" y1="688" y2="688" x1="688" />
            <wire x2="688" y1="688" y2="1072" x1="688" />
            <wire x2="720" y1="1072" y2="1072" x1="688" />
            <wire x2="688" y1="1072" y2="1504" x1="688" />
            <wire x2="720" y1="1504" y2="1504" x1="688" />
        </branch>
        <instance x="368" y="640" name="XLXI_10" orien="R0" />
        <branch name="Qb">
            <wire x2="320" y1="432" y2="608" x1="320" />
            <wire x2="368" y1="608" y2="608" x1="320" />
            <wire x2="1872" y1="432" y2="432" x1="320" />
            <wire x2="1872" y1="432" y2="576" x1="1872" />
            <wire x2="2048" y1="576" y2="576" x1="1872" />
            <wire x2="1872" y1="576" y2="576" x1="1712" />
        </branch>
        <instance x="368" y="224" name="XLXI_9" orien="R0" />
        <branch name="Qa">
            <wire x2="336" y1="48" y2="192" x1="336" />
            <wire x2="368" y1="192" y2="192" x1="336" />
            <wire x2="800" y1="48" y2="48" x1="336" />
            <wire x2="1872" y1="48" y2="48" x1="800" />
            <wire x2="1872" y1="48" y2="192" x1="1872" />
            <wire x2="2048" y1="192" y2="192" x1="1872" />
            <wire x2="800" y1="48" y2="544" x1="800" />
            <wire x2="1008" y1="544" y2="544" x1="800" />
            <wire x2="1872" y1="192" y2="192" x1="1712" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="992" y1="720" y2="720" x1="976" />
            <wire x2="992" y1="720" y2="912" x1="992" />
            <wire x2="1008" y1="912" y2="912" x1="992" />
        </branch>
        <instance x="368" y="1008" name="XLXI_12" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="656" y1="976" y2="976" x1="592" />
            <wire x2="1008" y1="976" y2="976" x1="656" />
            <wire x2="656" y1="976" y2="1200" x1="656" />
            <wire x2="720" y1="1200" y2="1200" x1="656" />
            <wire x2="656" y1="1200" y2="1616" x1="656" />
            <wire x2="656" y1="1616" y2="1632" x1="656" />
            <wire x2="720" y1="1632" y2="1632" x1="656" />
        </branch>
        <instance x="720" y="1264" name="XLXI_14" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="992" y1="1136" y2="1136" x1="976" />
            <wire x2="992" y1="1136" y2="1296" x1="992" />
            <wire x2="1008" y1="1296" y2="1296" x1="992" />
        </branch>
        <instance x="368" y="1392" name="XLXI_15" orien="R0" />
        <instance x="720" y="1760" name="XLXI_16" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="624" y1="1360" y2="1360" x1="592" />
            <wire x2="640" y1="1360" y2="1360" x1="624" />
            <wire x2="1008" y1="1360" y2="1360" x1="640" />
            <wire x2="640" y1="1360" y2="1696" x1="640" />
            <wire x2="720" y1="1696" y2="1696" x1="640" />
        </branch>
        <branch name="Rc">
            <wire x2="2032" y1="1600" y2="1600" x1="976" />
        </branch>
        <iomarker fontsize="28" x="176" y="320" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2032" y="944" name="Qc" orien="R0" />
        <iomarker fontsize="28" x="2032" y="1328" name="Qd" orien="R0" />
        <iomarker fontsize="28" x="2048" y="576" name="Qb" orien="R0" />
        <iomarker fontsize="28" x="2048" y="192" name="Qa" orien="R0" />
        <iomarker fontsize="28" x="2032" y="1600" name="Rc" orien="R0" />
    </sheet>
</drawing>