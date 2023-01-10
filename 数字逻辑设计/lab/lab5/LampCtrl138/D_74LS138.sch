<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="B" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="A" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="G" />
        <signal name="G2A" />
        <signal name="G2B" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_53" />
        <signal name="XLXN_30" />
        <signal name="C" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_83" />
        <signal name="Y(7:0)" />
        <signal name="Y(7)" />
        <signal name="Y(6)" />
        <signal name="Y(4)" />
        <signal name="Y(3)" />
        <signal name="Y(5)" />
        <signal name="Y(0)" />
        <signal name="Y(1)" />
        <signal name="Y(2)" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="G2A" />
        <port polarity="Input" name="G2B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Y(7:0)" />
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
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_10">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_11">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_12">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_13">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_15">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="Y(5)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_16">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="Y(6)" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_18">
            <blockpin signalname="G2B" name="I0" />
            <blockpin signalname="G2A" name="I1" />
            <blockpin signalname="XLXN_27" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_17">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="Y(7)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_14">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="Y(4)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1152" name="XLXI_3" orien="R0" />
        <instance x="1376" y="544" name="XLXI_5" orien="R0" />
        <instance x="1360" y="784" name="XLXI_6" orien="R0" />
        <instance x="1376" y="1056" name="XLXI_7" orien="R0" />
        <instance x="1376" y="1312" name="XLXI_8" orien="R0" />
        <branch name="B">
            <wire x2="784" y1="1248" y2="1248" x1="624" />
            <wire x2="1344" y1="1248" y2="1248" x1="784" />
            <wire x2="1376" y1="1248" y2="1248" x1="1344" />
            <wire x2="896" y1="1120" y2="1120" x1="784" />
            <wire x2="784" y1="1120" y2="1248" x1="784" />
            <wire x2="1376" y1="992" y2="992" x1="1344" />
            <wire x2="1344" y1="992" y2="1248" x1="1344" />
        </branch>
        <instance x="896" y="480" name="XLXI_2" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1136" y1="448" y2="448" x1="1120" />
            <wire x2="1136" y1="448" y2="928" x1="1136" />
            <wire x2="1376" y1="928" y2="928" x1="1136" />
            <wire x2="1136" y1="416" y2="448" x1="1136" />
            <wire x2="1376" y1="416" y2="416" x1="1136" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1216" y1="1120" y2="1120" x1="1120" />
            <wire x2="1376" y1="480" y2="480" x1="1216" />
            <wire x2="1216" y1="480" y2="720" x1="1216" />
            <wire x2="1216" y1="720" y2="1120" x1="1216" />
            <wire x2="1360" y1="720" y2="720" x1="1216" />
        </branch>
        <branch name="A">
            <wire x2="800" y1="656" y2="656" x1="624" />
            <wire x2="1280" y1="656" y2="656" x1="800" />
            <wire x2="1360" y1="656" y2="656" x1="1280" />
            <wire x2="1280" y1="656" y2="1184" x1="1280" />
            <wire x2="1376" y1="1184" y2="1184" x1="1280" />
            <wire x2="896" y1="448" y2="448" x1="800" />
            <wire x2="800" y1="448" y2="656" x1="800" />
        </branch>
        <instance x="2288" y="368" name="XLXI_10" orien="R0" />
        <instance x="2288" y="672" name="XLXI_11" orien="R0" />
        <instance x="2304" y="976" name="XLXI_12" orien="R0" />
        <instance x="2304" y="1296" name="XLXI_13" orien="R0" />
        <instance x="2304" y="1856" name="XLXI_15" orien="R0" />
        <instance x="2288" y="2096" name="XLXI_16" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1776" y1="688" y2="688" x1="1616" />
            <wire x2="1776" y1="688" y2="1664" x1="1776" />
            <wire x2="2304" y1="1664" y2="1664" x1="1776" />
            <wire x2="2288" y1="480" y2="480" x1="1776" />
            <wire x2="1776" y1="480" y2="688" x1="1776" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1856" y1="960" y2="960" x1="1632" />
            <wire x2="1856" y1="960" y2="1904" x1="1856" />
            <wire x2="2288" y1="1904" y2="1904" x1="1856" />
            <wire x2="2304" y1="784" y2="784" x1="1856" />
            <wire x2="1856" y1="784" y2="960" x1="1856" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1904" y1="1216" y2="1216" x1="1632" />
            <wire x2="1904" y1="1216" y2="2176" x1="1904" />
            <wire x2="2288" y1="2176" y2="2176" x1="1904" />
            <wire x2="2304" y1="1104" y2="1104" x1="1904" />
            <wire x2="1904" y1="1104" y2="1216" x1="1904" />
        </branch>
        <instance x="1360" y="2368" name="XLXI_18" orien="R0" />
        <branch name="G">
            <wire x2="928" y1="2176" y2="2176" x1="624" />
        </branch>
        <branch name="G2A">
            <wire x2="1360" y1="2240" y2="2240" x1="624" />
        </branch>
        <branch name="G2B">
            <wire x2="1360" y1="2304" y2="2304" x1="624" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1360" y1="2176" y2="2176" x1="1152" />
        </branch>
        <instance x="928" y="2208" name="XLXI_4" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1952" y1="2240" y2="2240" x1="1616" />
            <wire x2="2288" y1="2240" y2="2240" x1="1952" />
            <wire x2="2288" y1="240" y2="240" x1="1952" />
            <wire x2="1952" y1="240" y2="544" x1="1952" />
            <wire x2="2288" y1="544" y2="544" x1="1952" />
            <wire x2="1952" y1="544" y2="848" x1="1952" />
            <wire x2="2304" y1="848" y2="848" x1="1952" />
            <wire x2="1952" y1="848" y2="1168" x1="1952" />
            <wire x2="2304" y1="1168" y2="1168" x1="1952" />
            <wire x2="1952" y1="1168" y2="1440" x1="1952" />
            <wire x2="1952" y1="1440" y2="1728" x1="1952" />
            <wire x2="2304" y1="1728" y2="1728" x1="1952" />
            <wire x2="1952" y1="1728" y2="1968" x1="1952" />
            <wire x2="2288" y1="1968" y2="1968" x1="1952" />
            <wire x2="1952" y1="1968" y2="2240" x1="1952" />
            <wire x2="2304" y1="1440" y2="1440" x1="1952" />
        </branch>
        <instance x="2288" y="2368" name="XLXI_17" orien="R0" />
        <branch name="C">
            <wire x2="976" y1="1792" y2="1792" x1="624" />
            <wire x2="2208" y1="1792" y2="1792" x1="976" />
            <wire x2="2304" y1="1792" y2="1792" x1="2208" />
            <wire x2="2208" y1="1792" y2="2032" x1="2208" />
            <wire x2="2288" y1="2032" y2="2032" x1="2208" />
            <wire x2="2208" y1="2032" y2="2304" x1="2208" />
            <wire x2="2288" y1="2304" y2="2304" x1="2208" />
            <wire x2="1312" y1="1584" y2="1584" x1="976" />
            <wire x2="976" y1="1584" y2="1792" x1="976" />
            <wire x2="2208" y1="1504" y2="1792" x1="2208" />
            <wire x2="2304" y1="1504" y2="1504" x1="2208" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1712" y1="448" y2="448" x1="1632" />
            <wire x2="1712" y1="448" y2="1376" x1="1712" />
            <wire x2="2304" y1="1376" y2="1376" x1="1712" />
            <wire x2="2288" y1="176" y2="176" x1="1712" />
            <wire x2="1712" y1="176" y2="448" x1="1712" />
        </branch>
        <instance x="2304" y="1568" name="XLXI_14" orien="R0" />
        <instance x="1312" y="1616" name="XLXI_9" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="2080" y1="1584" y2="1584" x1="1536" />
            <wire x2="2080" y1="304" y2="608" x1="2080" />
            <wire x2="2080" y1="608" y2="912" x1="2080" />
            <wire x2="2080" y1="912" y2="1232" x1="2080" />
            <wire x2="2080" y1="1232" y2="1584" x1="2080" />
            <wire x2="2304" y1="1232" y2="1232" x1="2080" />
            <wire x2="2304" y1="912" y2="912" x1="2080" />
            <wire x2="2288" y1="608" y2="608" x1="2080" />
            <wire x2="2288" y1="304" y2="304" x1="2080" />
        </branch>
        <branch name="Y(7:0)">
            <wire x2="2752" y1="112" y2="240" x1="2752" />
            <wire x2="2752" y1="240" y2="544" x1="2752" />
            <wire x2="2752" y1="544" y2="848" x1="2752" />
            <wire x2="2752" y1="848" y2="1168" x1="2752" />
            <wire x2="2752" y1="1168" y2="1328" x1="2752" />
            <wire x2="2848" y1="1328" y2="1328" x1="2752" />
            <wire x2="2752" y1="1328" y2="1440" x1="2752" />
            <wire x2="2752" y1="1440" y2="1728" x1="2752" />
            <wire x2="2752" y1="1728" y2="1968" x1="2752" />
            <wire x2="2752" y1="1968" y2="2240" x1="2752" />
            <wire x2="2752" y1="2240" y2="2288" x1="2752" />
        </branch>
        <branch name="Y(7)">
            <wire x2="2656" y1="2240" y2="2240" x1="2544" />
        </branch>
        <branch name="Y(6)">
            <wire x2="2656" y1="1968" y2="1968" x1="2544" />
        </branch>
        <branch name="Y(4)">
            <wire x2="2656" y1="1440" y2="1440" x1="2560" />
        </branch>
        <branch name="Y(3)">
            <wire x2="2576" y1="1168" y2="1168" x1="2560" />
            <wire x2="2656" y1="1168" y2="1168" x1="2576" />
        </branch>
        <branch name="Y(5)">
            <wire x2="2656" y1="1728" y2="1728" x1="2560" />
        </branch>
        <branch name="Y(0)">
            <wire x2="2656" y1="240" y2="240" x1="2544" />
        </branch>
        <branch name="Y(1)">
            <wire x2="2656" y1="544" y2="544" x1="2544" />
        </branch>
        <branch name="Y(2)">
            <wire x2="2656" y1="848" y2="848" x1="2560" />
        </branch>
        <bustap x2="2656" y1="240" y2="240" x1="2752" />
        <bustap x2="2656" y1="544" y2="544" x1="2752" />
        <bustap x2="2656" y1="848" y2="848" x1="2752" />
        <bustap x2="2656" y1="1168" y2="1168" x1="2752" />
        <bustap x2="2656" y1="1440" y2="1440" x1="2752" />
        <bustap x2="2656" y1="1728" y2="1728" x1="2752" />
        <bustap x2="2656" y1="1968" y2="1968" x1="2752" />
        <bustap x2="2656" y1="2240" y2="2240" x1="2752" />
        <iomarker fontsize="28" x="2848" y="1328" name="Y(7:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="1792" name="C" orien="R180" />
        <iomarker fontsize="28" x="624" y="2176" name="G" orien="R180" />
        <iomarker fontsize="28" x="624" y="2240" name="G2A" orien="R180" />
        <iomarker fontsize="28" x="624" y="2304" name="G2B" orien="R180" />
        <iomarker fontsize="28" x="624" y="1248" name="B" orien="R180" />
        <iomarker fontsize="28" x="624" y="656" name="A" orien="R180" />
    </sheet>
</drawing>