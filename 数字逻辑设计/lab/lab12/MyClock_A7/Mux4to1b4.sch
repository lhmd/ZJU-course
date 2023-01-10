<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="l0(1)" />
        <signal name="l0(2)" />
        <signal name="l0(3:0)" />
        <signal name="XLXN_151(3:0)" />
        <signal name="XLXN_152" />
        <signal name="XLXN_6" />
        <signal name="l0(3)" />
        <signal name="XLXN_154" />
        <signal name="XLXN_7" />
        <signal name="l0(0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="l1(3:0)" />
        <signal name="XLXN_159(3:0)" />
        <signal name="XLXN_160(3:0)" />
        <signal name="l1(0)" />
        <signal name="l1(1)" />
        <signal name="l1(2)" />
        <signal name="l2(3:0)" />
        <signal name="XLXN_162(3:0)" />
        <signal name="XLXN_163(3:0)" />
        <signal name="l1(3)" />
        <signal name="l2(0)" />
        <signal name="l2(1)" />
        <signal name="l2(2)" />
        <signal name="l2(3)" />
        <signal name="l3(3:0)" />
        <signal name="XLXN_165(3:0)" />
        <signal name="l3(0)" />
        <signal name="l3(1)" />
        <signal name="l3(2)" />
        <signal name="l3(3)" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="XLXN_183" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="l0(3:0)" />
        <port polarity="Input" name="l1(3:0)" />
        <port polarity="Input" name="l2(3:0)" />
        <port polarity="Input" name="l3(3:0)" />
        <port polarity="Output" name="o(3:0)" />
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
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="l3(3)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_144" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="l2(3)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_143" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="l1(3)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_142" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="l0(3)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_141" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="l3(2)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_140" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="l2(2)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_139" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="l1(2)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_138" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="l0(2)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_137" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="l3(1)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_136" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="l2(1)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_135" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="l1(1)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_134" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="l0(1)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_133" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="l3(0)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_132" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="l2(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_131" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="l1(0)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_130" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="l0(0)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_129" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_111">
            <blockpin signalname="XLXN_132" name="I0" />
            <blockpin signalname="XLXN_131" name="I1" />
            <blockpin signalname="XLXN_130" name="I2" />
            <blockpin signalname="XLXN_129" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_112">
            <blockpin signalname="XLXN_136" name="I0" />
            <blockpin signalname="XLXN_135" name="I1" />
            <blockpin signalname="XLXN_134" name="I2" />
            <blockpin signalname="XLXN_133" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_113">
            <blockpin signalname="XLXN_140" name="I0" />
            <blockpin signalname="XLXN_139" name="I1" />
            <blockpin signalname="XLXN_138" name="I2" />
            <blockpin signalname="XLXN_137" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_114">
            <blockpin signalname="XLXN_144" name="I0" />
            <blockpin signalname="XLXN_143" name="I1" />
            <blockpin signalname="XLXN_142" name="I2" />
            <blockpin signalname="XLXN_141" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="s(1:0)">
            <wire x2="1104" y1="528" y2="528" x1="832" />
            <wire x2="1104" y1="528" y2="544" x1="1104" />
            <wire x2="1104" y1="544" y2="608" x1="1104" />
            <wire x2="1104" y1="608" y2="640" x1="1104" />
            <wire x2="1104" y1="512" y2="528" x1="1104" />
        </branch>
        <bustap x2="1200" y1="544" y2="544" x1="1104" />
        <bustap x2="1200" y1="608" y2="608" x1="1104" />
        <instance x="1280" y="576" name="XLXI_1" orien="R0" />
        <instance x="1280" y="640" name="XLXI_2" orien="R0" />
        <branch name="s(1)">
            <wire x2="1232" y1="544" y2="544" x1="1200" />
            <wire x2="1280" y1="544" y2="544" x1="1232" />
            <wire x2="1232" y1="544" y2="800" x1="1232" />
            <wire x2="1680" y1="800" y2="800" x1="1232" />
            <wire x2="1232" y1="800" y2="928" x1="1232" />
            <wire x2="1680" y1="928" y2="928" x1="1232" />
        </branch>
        <branch name="s(0)">
            <wire x2="1264" y1="608" y2="608" x1="1200" />
            <wire x2="1280" y1="608" y2="608" x1="1264" />
            <wire x2="1264" y1="608" y2="736" x1="1264" />
            <wire x2="1680" y1="736" y2="736" x1="1264" />
            <wire x2="1264" y1="736" y2="992" x1="1264" />
            <wire x2="1680" y1="992" y2="992" x1="1264" />
        </branch>
        <instance x="1680" y="672" name="XLXI_3" orien="R0" />
        <instance x="1680" y="800" name="XLXI_4" orien="R0" />
        <instance x="1680" y="928" name="XLXI_5" orien="R0" />
        <instance x="1680" y="1056" name="XLXI_6" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1600" y1="544" y2="544" x1="1504" />
            <wire x2="1680" y1="544" y2="544" x1="1600" />
            <wire x2="1600" y1="544" y2="672" x1="1600" />
            <wire x2="1680" y1="672" y2="672" x1="1600" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1536" y1="608" y2="608" x1="1504" />
            <wire x2="1680" y1="608" y2="608" x1="1536" />
            <wire x2="1536" y1="608" y2="864" x1="1536" />
            <wire x2="1680" y1="864" y2="864" x1="1536" />
        </branch>
        <text style="fontsize:44;fontname:Arial" x="1788" y="580">00</text>
        <text style="fontsize:44;fontname:Arial" x="1780" y="708">01</text>
        <text style="fontsize:44;fontname:Arial" x="1784" y="836">10</text>
        <text style="fontsize:44;fontname:Arial" x="1784" y="964">11</text>
        <bustap x2="2288" y1="1104" y2="1104" x1="2192" />
        <bustap x2="2288" y1="1728" y2="1728" x1="2192" />
        <bustap x2="2288" y1="2304" y2="2304" x1="2192" />
        <branch name="l0(1)">
            <wire x2="2608" y1="1104" y2="1104" x1="2288" />
            <wire x2="2608" y1="1088" y2="1104" x1="2608" />
            <wire x2="2704" y1="1088" y2="1088" x1="2608" />
        </branch>
        <branch name="l0(2)">
            <wire x2="2608" y1="1728" y2="1728" x1="2288" />
            <wire x2="2608" y1="1712" y2="1728" x1="2608" />
            <wire x2="2704" y1="1712" y2="1712" x1="2608" />
        </branch>
        <branch name="l0(3:0)">
            <wire x2="2192" y1="1232" y2="1232" x1="1056" />
            <wire x2="2192" y1="1232" y2="1728" x1="2192" />
            <wire x2="2192" y1="1728" y2="2304" x1="2192" />
            <wire x2="2192" y1="496" y2="512" x1="2192" />
            <wire x2="2192" y1="512" y2="1104" x1="2192" />
            <wire x2="2192" y1="1104" y2="1232" x1="2192" />
        </branch>
        <bustap x2="2288" y1="512" y2="512" x1="2192" />
        <branch name="XLXN_6">
            <wire x2="2336" y1="576" y2="576" x1="1936" />
            <wire x2="2336" y1="576" y2="1024" x1="2336" />
            <wire x2="2336" y1="1024" y2="1648" x1="2336" />
            <wire x2="2336" y1="1648" y2="2224" x1="2336" />
            <wire x2="2704" y1="2224" y2="2224" x1="2336" />
            <wire x2="2704" y1="1648" y2="1648" x1="2336" />
            <wire x2="2704" y1="1024" y2="1024" x1="2336" />
            <wire x2="2704" y1="432" y2="432" x1="2336" />
            <wire x2="2336" y1="432" y2="576" x1="2336" />
        </branch>
        <branch name="l0(3)">
            <wire x2="2288" y1="2288" y2="2304" x1="2288" />
            <wire x2="2704" y1="2288" y2="2288" x1="2288" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2304" y1="704" y2="704" x1="1936" />
            <wire x2="2304" y1="704" y2="1168" x1="2304" />
            <wire x2="2304" y1="1168" y2="1776" x1="2304" />
            <wire x2="2304" y1="1776" y2="2368" x1="2304" />
            <wire x2="2704" y1="2368" y2="2368" x1="2304" />
            <wire x2="2704" y1="1776" y2="1776" x1="2304" />
            <wire x2="2704" y1="1168" y2="1168" x1="2304" />
            <wire x2="2704" y1="560" y2="560" x1="2304" />
            <wire x2="2304" y1="560" y2="704" x1="2304" />
        </branch>
        <branch name="l0(0)">
            <wire x2="2608" y1="512" y2="512" x1="2288" />
            <wire x2="2608" y1="496" y2="512" x1="2608" />
            <wire x2="2704" y1="496" y2="496" x1="2608" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2272" y1="832" y2="832" x1="1936" />
            <wire x2="2272" y1="832" y2="1312" x1="2272" />
            <wire x2="2272" y1="1312" y2="1904" x1="2272" />
            <wire x2="2272" y1="1904" y2="1920" x1="2272" />
            <wire x2="2480" y1="1920" y2="1920" x1="2272" />
            <wire x2="2480" y1="1920" y2="2512" x1="2480" />
            <wire x2="2704" y1="2512" y2="2512" x1="2480" />
            <wire x2="2704" y1="1904" y2="1904" x1="2272" />
            <wire x2="2704" y1="1312" y2="1312" x1="2272" />
            <wire x2="2272" y1="688" y2="832" x1="2272" />
            <wire x2="2704" y1="688" y2="688" x1="2272" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2240" y1="960" y2="960" x1="1936" />
            <wire x2="2240" y1="960" y2="1440" x1="2240" />
            <wire x2="2240" y1="1440" y2="2032" x1="2240" />
            <wire x2="2240" y1="2032" y2="2048" x1="2240" />
            <wire x2="2464" y1="2048" y2="2048" x1="2240" />
            <wire x2="2464" y1="2048" y2="2656" x1="2464" />
            <wire x2="2704" y1="2656" y2="2656" x1="2464" />
            <wire x2="2704" y1="2032" y2="2032" x1="2240" />
            <wire x2="2704" y1="1440" y2="1440" x1="2240" />
            <wire x2="2240" y1="816" y2="960" x1="2240" />
            <wire x2="2704" y1="816" y2="816" x1="2240" />
        </branch>
        <instance x="2704" y="2784" name="XLXI_24" orien="R0" />
        <instance x="2704" y="2640" name="XLXI_23" orien="R0" />
        <instance x="2704" y="2496" name="XLXI_22" orien="R0" />
        <instance x="2704" y="2352" name="XLXI_21" orien="R0" />
        <instance x="2704" y="2160" name="XLXI_19" orien="R0" />
        <instance x="2704" y="2032" name="XLXI_18" orien="R0" />
        <instance x="2704" y="1904" name="XLXI_17" orien="R0" />
        <instance x="2704" y="1776" name="XLXI_16" orien="R0" />
        <instance x="2704" y="1568" name="XLXI_14" orien="R0" />
        <instance x="2704" y="1440" name="XLXI_13" orien="R0" />
        <instance x="2704" y="1296" name="XLXI_12" orien="R0" />
        <instance x="2704" y="1152" name="XLXI_11" orien="R0" />
        <instance x="2704" y="944" name="XLXI_10" orien="R0" />
        <instance x="2704" y="816" name="XLXI_9" orien="R0" />
        <instance x="2704" y="688" name="XLXI_8" orien="R0" />
        <instance x="2704" y="560" name="XLXI_7" orien="R0" />
        <branch name="l1(3:0)">
            <wire x2="2144" y1="1312" y2="1312" x1="1056" />
            <wire x2="2144" y1="1312" y2="1856" x1="2144" />
            <wire x2="2144" y1="1856" y2="1920" x1="2144" />
            <wire x2="2144" y1="1920" y2="2432" x1="2144" />
            <wire x2="2144" y1="2432" y2="2448" x1="2144" />
            <wire x2="2144" y1="2448" y2="2496" x1="2144" />
            <wire x2="2544" y1="2448" y2="2448" x1="2144" />
            <wire x2="2576" y1="1856" y2="1856" x1="2144" />
            <wire x2="2512" y1="624" y2="624" x1="2144" />
            <wire x2="2144" y1="624" y2="752" x1="2144" />
            <wire x2="2144" y1="752" y2="1248" x1="2144" />
            <wire x2="2144" y1="1248" y2="1312" x1="2144" />
            <wire x2="2576" y1="1248" y2="1248" x1="2144" />
            <wire x2="2512" y1="608" y2="624" x1="2512" />
            <wire x2="2544" y1="2432" y2="2448" x1="2544" />
            <wire x2="2576" y1="1216" y2="1232" x1="2576" />
            <wire x2="2576" y1="1232" y2="1248" x1="2576" />
            <wire x2="2576" y1="1840" y2="1856" x1="2576" />
        </branch>
        <bustap x2="2608" y1="624" y2="624" x1="2512" />
        <branch name="l1(0)">
            <wire x2="2704" y1="624" y2="624" x1="2608" />
        </branch>
        <bustap x2="2672" y1="1232" y2="1232" x1="2576" />
        <branch name="l1(1)">
            <wire x2="2704" y1="1232" y2="1232" x1="2672" />
        </branch>
        <bustap x2="2672" y1="1840" y2="1840" x1="2576" />
        <branch name="l1(2)">
            <wire x2="2704" y1="1840" y2="1840" x1="2672" />
        </branch>
        <branch name="l2(3:0)">
            <wire x2="2096" y1="1408" y2="1408" x1="1056" />
            <wire x2="2096" y1="1408" y2="1984" x1="2096" />
            <wire x2="2592" y1="1984" y2="1984" x1="2096" />
            <wire x2="2096" y1="1984" y2="2560" x1="2096" />
            <wire x2="2096" y1="2560" y2="2576" x1="2096" />
            <wire x2="2096" y1="2576" y2="2608" x1="2096" />
            <wire x2="2576" y1="2608" y2="2608" x1="2096" />
            <wire x2="2544" y1="768" y2="768" x1="2096" />
            <wire x2="2096" y1="768" y2="880" x1="2096" />
            <wire x2="2096" y1="880" y2="1392" x1="2096" />
            <wire x2="2096" y1="1392" y2="1408" x1="2096" />
            <wire x2="2576" y1="1392" y2="1392" x1="2096" />
            <wire x2="2544" y1="736" y2="752" x1="2544" />
            <wire x2="2544" y1="752" y2="768" x1="2544" />
            <wire x2="2576" y1="1376" y2="1392" x1="2576" />
            <wire x2="2576" y1="2576" y2="2608" x1="2576" />
            <wire x2="2592" y1="1968" y2="1984" x1="2592" />
        </branch>
        <bustap x2="2640" y1="2432" y2="2432" x1="2544" />
        <branch name="l1(3)">
            <wire x2="2704" y1="2432" y2="2432" x1="2640" />
        </branch>
        <bustap x2="2640" y1="752" y2="752" x1="2544" />
        <branch name="l2(0)">
            <wire x2="2704" y1="752" y2="752" x1="2640" />
        </branch>
        <bustap x2="2672" y1="1376" y2="1376" x1="2576" />
        <branch name="l2(1)">
            <wire x2="2704" y1="1376" y2="1376" x1="2672" />
        </branch>
        <bustap x2="2688" y1="1968" y2="1968" x1="2592" />
        <branch name="l2(2)">
            <wire x2="2704" y1="1968" y2="1968" x1="2688" />
        </branch>
        <bustap x2="2672" y1="2576" y2="2576" x1="2576" />
        <branch name="l2(3)">
            <wire x2="2704" y1="2576" y2="2576" x1="2672" />
        </branch>
        <branch name="l3(3:0)">
            <wire x2="2064" y1="1504" y2="1504" x1="1056" />
            <wire x2="2064" y1="1504" y2="1536" x1="2064" />
            <wire x2="2064" y1="1536" y2="1584" x1="2064" />
            <wire x2="2064" y1="1584" y2="2112" x1="2064" />
            <wire x2="2064" y1="2112" y2="2720" x1="2064" />
            <wire x2="2064" y1="2720" y2="2736" x1="2064" />
            <wire x2="2576" y1="2736" y2="2736" x1="2064" />
            <wire x2="2592" y1="2112" y2="2112" x1="2064" />
            <wire x2="2576" y1="1536" y2="1536" x1="2064" />
            <wire x2="2064" y1="896" y2="1504" x1="2064" />
            <wire x2="2528" y1="896" y2="896" x1="2064" />
            <wire x2="2528" y1="864" y2="880" x1="2528" />
            <wire x2="2528" y1="880" y2="896" x1="2528" />
            <wire x2="2576" y1="1504" y2="1536" x1="2576" />
            <wire x2="2576" y1="2720" y2="2736" x1="2576" />
            <wire x2="2592" y1="2096" y2="2112" x1="2592" />
        </branch>
        <bustap x2="2624" y1="880" y2="880" x1="2528" />
        <branch name="l3(0)">
            <wire x2="2704" y1="880" y2="880" x1="2624" />
        </branch>
        <bustap x2="2672" y1="1504" y2="1504" x1="2576" />
        <branch name="l3(1)">
            <wire x2="2704" y1="1504" y2="1504" x1="2672" />
        </branch>
        <bustap x2="2688" y1="2096" y2="2096" x1="2592" />
        <branch name="l3(2)">
            <wire x2="2704" y1="2096" y2="2096" x1="2688" />
        </branch>
        <bustap x2="2672" y1="2720" y2="2720" x1="2576" />
        <branch name="l3(3)">
            <wire x2="2704" y1="2720" y2="2720" x1="2672" />
        </branch>
        <instance x="3200" y="816" name="XLXI_111" orien="R0" />
        <instance x="3200" y="1408" name="XLXI_112" orien="R0" />
        <instance x="3200" y="2016" name="XLXI_113" orien="R0" />
        <instance x="3184" y="2624" name="XLXI_114" orien="R0" />
        <branch name="XLXN_129">
            <wire x2="3200" y1="464" y2="464" x1="2960" />
            <wire x2="3200" y1="464" y2="560" x1="3200" />
        </branch>
        <branch name="XLXN_130">
            <wire x2="3072" y1="592" y2="592" x1="2960" />
            <wire x2="3072" y1="592" y2="624" x1="3072" />
            <wire x2="3200" y1="624" y2="624" x1="3072" />
        </branch>
        <branch name="XLXN_131">
            <wire x2="3072" y1="720" y2="720" x1="2960" />
            <wire x2="3072" y1="688" y2="720" x1="3072" />
            <wire x2="3200" y1="688" y2="688" x1="3072" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="3200" y1="848" y2="848" x1="2960" />
            <wire x2="3200" y1="752" y2="848" x1="3200" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="3200" y1="1056" y2="1056" x1="2960" />
            <wire x2="3200" y1="1056" y2="1152" x1="3200" />
        </branch>
        <branch name="XLXN_134">
            <wire x2="3072" y1="1200" y2="1200" x1="2960" />
            <wire x2="3072" y1="1200" y2="1216" x1="3072" />
            <wire x2="3200" y1="1216" y2="1216" x1="3072" />
        </branch>
        <branch name="XLXN_135">
            <wire x2="3072" y1="1344" y2="1344" x1="2960" />
            <wire x2="3072" y1="1280" y2="1344" x1="3072" />
            <wire x2="3200" y1="1280" y2="1280" x1="3072" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="3200" y1="1472" y2="1472" x1="2960" />
            <wire x2="3200" y1="1344" y2="1472" x1="3200" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="3200" y1="1680" y2="1680" x1="2960" />
            <wire x2="3200" y1="1680" y2="1760" x1="3200" />
        </branch>
        <branch name="XLXN_138">
            <wire x2="3072" y1="1808" y2="1808" x1="2960" />
            <wire x2="3072" y1="1808" y2="1824" x1="3072" />
            <wire x2="3200" y1="1824" y2="1824" x1="3072" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="3072" y1="1936" y2="1936" x1="2960" />
            <wire x2="3072" y1="1888" y2="1936" x1="3072" />
            <wire x2="3200" y1="1888" y2="1888" x1="3072" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="3200" y1="2064" y2="2064" x1="2960" />
            <wire x2="3200" y1="1952" y2="2064" x1="3200" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="3184" y1="2256" y2="2256" x1="2960" />
            <wire x2="3184" y1="2256" y2="2368" x1="3184" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="3072" y1="2400" y2="2400" x1="2960" />
            <wire x2="3072" y1="2400" y2="2432" x1="3072" />
            <wire x2="3184" y1="2432" y2="2432" x1="3072" />
        </branch>
        <branch name="XLXN_143">
            <wire x2="3072" y1="2544" y2="2544" x1="2960" />
            <wire x2="3072" y1="2496" y2="2544" x1="3072" />
            <wire x2="3184" y1="2496" y2="2496" x1="3072" />
        </branch>
        <branch name="XLXN_144">
            <wire x2="3184" y1="2688" y2="2688" x1="2960" />
            <wire x2="3184" y1="2560" y2="2688" x1="3184" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="3728" y1="544" y2="656" x1="3728" />
            <wire x2="3728" y1="656" y2="1248" x1="3728" />
            <wire x2="3728" y1="1248" y2="1456" x1="3728" />
            <wire x2="4016" y1="1456" y2="1456" x1="3728" />
            <wire x2="3728" y1="1456" y2="1856" x1="3728" />
            <wire x2="3728" y1="1856" y2="2464" x1="3728" />
            <wire x2="3728" y1="2464" y2="2560" x1="3728" />
        </branch>
        <bustap x2="3632" y1="656" y2="656" x1="3728" />
        <bustap x2="3632" y1="1248" y2="1248" x1="3728" />
        <bustap x2="3632" y1="1856" y2="1856" x1="3728" />
        <bustap x2="3632" y1="2464" y2="2464" x1="3728" />
        <branch name="o(0)">
            <wire x2="3632" y1="656" y2="656" x1="3456" />
        </branch>
        <branch name="o(1)">
            <wire x2="3632" y1="1248" y2="1248" x1="3456" />
        </branch>
        <branch name="o(2)">
            <wire x2="3632" y1="1856" y2="1856" x1="3456" />
        </branch>
        <branch name="o(3)">
            <wire x2="3632" y1="2464" y2="2464" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1232" name="l0(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1312" name="l1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1408" name="l2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1504" name="l3(3:0)" orien="R180" />
        <iomarker fontsize="28" x="4016" y="1456" name="o(3:0)" orien="R0" />
        <iomarker fontsize="28" x="832" y="528" name="s(1:0)" orien="R180" />
    </sheet>
</drawing>