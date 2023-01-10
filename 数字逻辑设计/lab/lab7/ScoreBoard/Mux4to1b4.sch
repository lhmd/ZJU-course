<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="ns1" />
        <signal name="ns0" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="o(1)" />
        <signal name="I0(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="I0(3)" />
        <signal name="I0(2)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="I2(3)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <signal name="I1(3:0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I2(2)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Output" name="o(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="ns0" name="I0" />
            <blockpin signalname="ns1" name="I1" />
            <blockpin signalname="D0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="ns1" name="I1" />
            <blockpin signalname="D1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="ns0" name="I1" />
            <blockpin signalname="D2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="D3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="ns1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="ns0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="D0" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_14" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="D0" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_16">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="D0" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_21">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="D0" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_28" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="s(1:0)">
            <wire x2="496" y1="112" y2="112" x1="272" />
            <wire x2="496" y1="112" y2="144" x1="496" />
            <wire x2="496" y1="144" y2="224" x1="496" />
            <wire x2="496" y1="224" y2="272" x1="496" />
        </branch>
        <iomarker fontsize="28" x="272" y="112" name="s(1:0)" orien="R180" />
        <bustap x2="592" y1="144" y2="144" x1="496" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="144" type="branch" />
            <wire x2="656" y1="48" y2="48" x1="432" />
            <wire x2="656" y1="48" y2="144" x1="656" />
            <wire x2="672" y1="144" y2="144" x1="656" />
            <wire x2="432" y1="48" y2="512" x1="432" />
            <wire x2="432" y1="512" y2="656" x1="432" />
            <wire x2="944" y1="656" y2="656" x1="432" />
            <wire x2="944" y1="512" y2="512" x1="432" />
            <wire x2="608" y1="144" y2="144" x1="592" />
            <wire x2="656" y1="144" y2="144" x1="608" />
        </branch>
        <bustap x2="592" y1="224" y2="224" x1="496" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="616" y="224" type="branch" />
            <wire x2="608" y1="224" y2="224" x1="592" />
            <wire x2="608" y1="224" y2="368" x1="608" />
            <wire x2="944" y1="368" y2="368" x1="608" />
            <wire x2="608" y1="368" y2="592" x1="608" />
            <wire x2="944" y1="592" y2="592" x1="608" />
            <wire x2="640" y1="224" y2="224" x1="608" />
        </branch>
        <instance x="944" y="272" name="XLXI_1" orien="R0" />
        <instance x="944" y="432" name="XLXI_2" orien="R0" />
        <instance x="944" y="576" name="XLXI_3" orien="R0" />
        <instance x="944" y="720" name="XLXI_4" orien="R0" />
        <instance x="672" y="176" name="XLXI_5" orien="R0" />
        <branch name="ns1">
            <wire x2="912" y1="144" y2="144" x1="896" />
            <wire x2="944" y1="144" y2="144" x1="912" />
            <wire x2="912" y1="144" y2="304" x1="912" />
            <wire x2="944" y1="304" y2="304" x1="912" />
        </branch>
        <instance x="640" y="256" name="XLXI_6" orien="R0" />
        <branch name="ns0">
            <wire x2="880" y1="224" y2="224" x1="864" />
            <wire x2="928" y1="224" y2="224" x1="880" />
            <wire x2="880" y1="224" y2="448" x1="880" />
            <wire x2="944" y1="448" y2="448" x1="880" />
            <wire x2="944" y1="208" y2="208" x1="928" />
            <wire x2="928" y1="208" y2="224" x1="928" />
        </branch>
        <branch name="D0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1252" y="176" type="branch" />
            <wire x2="1296" y1="176" y2="176" x1="1200" />
            <wire x2="1888" y1="176" y2="176" x1="1296" />
            <wire x2="1296" y1="176" y2="832" x1="1296" />
            <wire x2="1872" y1="832" y2="832" x1="1296" />
            <wire x2="1296" y1="832" y2="1488" x1="1296" />
            <wire x2="1296" y1="1488" y2="2096" x1="1296" />
            <wire x2="1840" y1="2096" y2="2096" x1="1296" />
            <wire x2="1856" y1="1488" y2="1488" x1="1296" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1242" y="336" type="branch" />
            <wire x2="1264" y1="336" y2="336" x1="1200" />
            <wire x2="1872" y1="336" y2="336" x1="1264" />
            <wire x2="1264" y1="336" y2="992" x1="1264" />
            <wire x2="1264" y1="992" y2="1648" x1="1264" />
            <wire x2="1264" y1="1648" y2="2256" x1="1264" />
            <wire x2="1824" y1="2256" y2="2256" x1="1264" />
            <wire x2="1840" y1="1648" y2="1648" x1="1264" />
            <wire x2="1856" y1="992" y2="992" x1="1264" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1250" y="480" type="branch" />
            <wire x2="1328" y1="480" y2="480" x1="1200" />
            <wire x2="1872" y1="480" y2="480" x1="1328" />
            <wire x2="1328" y1="480" y2="1136" x1="1328" />
            <wire x2="1328" y1="1136" y2="1792" x1="1328" />
            <wire x2="1328" y1="1792" y2="2400" x1="1328" />
            <wire x2="1824" y1="2400" y2="2400" x1="1328" />
            <wire x2="1840" y1="1792" y2="1792" x1="1328" />
            <wire x2="1856" y1="1136" y2="1136" x1="1328" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1271" y="624" type="branch" />
            <wire x2="1344" y1="624" y2="624" x1="1200" />
            <wire x2="1872" y1="624" y2="624" x1="1344" />
            <wire x2="1344" y1="624" y2="1280" x1="1344" />
            <wire x2="1344" y1="1280" y2="1936" x1="1344" />
            <wire x2="1344" y1="1936" y2="2544" x1="1344" />
            <wire x2="1824" y1="2544" y2="2544" x1="1344" />
            <wire x2="1840" y1="1936" y2="1936" x1="1344" />
            <wire x2="1856" y1="1280" y2="1280" x1="1344" />
        </branch>
        <instance x="1888" y="304" name="XLXI_7" orien="R0" />
        <instance x="1872" y="464" name="XLXI_8" orien="R0" />
        <instance x="1872" y="608" name="XLXI_9" orien="R0" />
        <instance x="1872" y="752" name="XLXI_10" orien="R0" />
        <instance x="2288" y="576" name="XLXI_11" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2288" y1="208" y2="208" x1="2144" />
            <wire x2="2288" y1="208" y2="320" x1="2288" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2208" y1="368" y2="368" x1="2128" />
            <wire x2="2208" y1="368" y2="384" x1="2208" />
            <wire x2="2288" y1="384" y2="384" x1="2208" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2208" y1="512" y2="512" x1="2128" />
            <wire x2="2208" y1="448" y2="512" x1="2208" />
            <wire x2="2288" y1="448" y2="448" x1="2208" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2288" y1="656" y2="656" x1="2128" />
            <wire x2="2288" y1="512" y2="656" x1="2288" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="2992" y1="352" y2="416" x1="2992" />
            <wire x2="2992" y1="416" y2="1072" x1="2992" />
            <wire x2="2992" y1="1072" y2="1104" x1="2992" />
            <wire x2="3120" y1="1104" y2="1104" x1="2992" />
            <wire x2="2992" y1="1104" y2="1728" x1="2992" />
            <wire x2="2992" y1="1728" y2="2336" x1="2992" />
            <wire x2="2992" y1="2336" y2="2416" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1104" name="o(3:0)" orien="R0" />
        <bustap x2="2896" y1="416" y2="416" x1="2992" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="416" type="branch" />
            <wire x2="2720" y1="416" y2="416" x1="2544" />
            <wire x2="2896" y1="416" y2="416" x1="2720" />
        </branch>
        <instance x="1872" y="960" name="XLXI_12" orien="R0" />
        <instance x="1856" y="1120" name="XLXI_13" orien="R0" />
        <instance x="1856" y="1264" name="XLXI_14" orien="R0" />
        <instance x="1856" y="1408" name="XLXI_15" orien="R0" />
        <instance x="2272" y="1232" name="XLXI_16" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="2272" y1="864" y2="864" x1="2128" />
            <wire x2="2272" y1="864" y2="976" x1="2272" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2192" y1="1024" y2="1024" x1="2112" />
            <wire x2="2192" y1="1024" y2="1040" x1="2192" />
            <wire x2="2272" y1="1040" y2="1040" x1="2192" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2192" y1="1168" y2="1168" x1="2112" />
            <wire x2="2192" y1="1104" y2="1168" x1="2192" />
            <wire x2="2272" y1="1104" y2="1104" x1="2192" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2272" y1="1312" y2="1312" x1="2112" />
            <wire x2="2272" y1="1168" y2="1312" x1="2272" />
        </branch>
        <instance x="1856" y="1616" name="XLXI_17" orien="R0" />
        <instance x="1840" y="1776" name="XLXI_18" orien="R0" />
        <instance x="1840" y="1920" name="XLXI_19" orien="R0" />
        <instance x="1840" y="2064" name="XLXI_20" orien="R0" />
        <instance x="2256" y="1888" name="XLXI_21" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2256" y1="1520" y2="1520" x1="2112" />
            <wire x2="2256" y1="1520" y2="1632" x1="2256" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2176" y1="1680" y2="1680" x1="2096" />
            <wire x2="2176" y1="1680" y2="1696" x1="2176" />
            <wire x2="2256" y1="1696" y2="1696" x1="2176" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2176" y1="1824" y2="1824" x1="2096" />
            <wire x2="2176" y1="1760" y2="1824" x1="2176" />
            <wire x2="2256" y1="1760" y2="1760" x1="2176" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2256" y1="1968" y2="1968" x1="2096" />
            <wire x2="2256" y1="1824" y2="1968" x1="2256" />
        </branch>
        <instance x="1840" y="2224" name="XLXI_22" orien="R0" />
        <instance x="1824" y="2384" name="XLXI_23" orien="R0" />
        <instance x="1824" y="2528" name="XLXI_24" orien="R0" />
        <instance x="1824" y="2672" name="XLXI_25" orien="R0" />
        <instance x="2240" y="2496" name="XLXI_26" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2240" y1="2128" y2="2128" x1="2096" />
            <wire x2="2240" y1="2128" y2="2240" x1="2240" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2160" y1="2288" y2="2288" x1="2080" />
            <wire x2="2160" y1="2288" y2="2304" x1="2160" />
            <wire x2="2240" y1="2304" y2="2304" x1="2160" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2160" y1="2432" y2="2432" x1="2080" />
            <wire x2="2160" y1="2368" y2="2432" x1="2160" />
            <wire x2="2240" y1="2368" y2="2368" x1="2160" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2240" y1="2576" y2="2576" x1="2080" />
            <wire x2="2240" y1="2432" y2="2576" x1="2240" />
        </branch>
        <bustap x2="2896" y1="2336" y2="2336" x1="2992" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2696" y="2336" type="branch" />
            <wire x2="2896" y1="2336" y2="2336" x1="2496" />
        </branch>
        <bustap x2="2896" y1="1728" y2="1728" x1="2992" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1728" type="branch" />
            <wire x2="2704" y1="1728" y2="1728" x1="2512" />
            <wire x2="2896" y1="1728" y2="1728" x1="2704" />
        </branch>
        <bustap x2="2896" y1="1072" y2="1072" x1="2992" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2712" y="1072" type="branch" />
            <wire x2="2896" y1="1072" y2="1072" x1="2528" />
        </branch>
        <branch name="I0(3:0)">
            <wire x2="1424" y1="1840" y2="1840" x1="352" />
            <wire x2="1424" y1="1840" y2="2160" x1="1424" />
            <wire x2="1424" y1="2160" y2="2272" x1="1424" />
            <wire x2="1424" y1="240" y2="896" x1="1424" />
            <wire x2="1424" y1="896" y2="1552" x1="1424" />
            <wire x2="1424" y1="1552" y2="1840" x1="1424" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="1360" y1="2304" y2="2304" x1="352" />
            <wire x2="1360" y1="2304" y2="2464" x1="1360" />
            <wire x2="1360" y1="2464" y2="2480" x1="1360" />
            <wire x2="1360" y1="416" y2="544" x1="1360" />
            <wire x2="1360" y1="544" y2="1200" x1="1360" />
            <wire x2="1360" y1="1200" y2="1856" x1="1360" />
            <wire x2="1360" y1="1856" y2="2304" x1="1360" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="1280" y1="2464" y2="2464" x1="352" />
            <wire x2="1280" y1="2464" y2="2608" x1="1280" />
            <wire x2="1280" y1="2608" y2="2704" x1="1280" />
            <wire x2="1280" y1="96" y2="96" x1="1264" />
            <wire x2="1280" y1="96" y2="688" x1="1280" />
            <wire x2="1280" y1="688" y2="1344" x1="1280" />
            <wire x2="1280" y1="1344" y2="2000" x1="1280" />
            <wire x2="1280" y1="2000" y2="2464" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="352" y="1840" name="I0(3:0)" orien="R180" />
        <bustap x2="1520" y1="2160" y2="2160" x1="1424" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="2160" type="branch" />
            <wire x2="1680" y1="2160" y2="2160" x1="1520" />
            <wire x2="1840" y1="2160" y2="2160" x1="1680" />
        </branch>
        <bustap x2="1520" y1="1552" y2="1552" x1="1424" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1688" y="1552" type="branch" />
            <wire x2="1856" y1="1552" y2="1552" x1="1520" />
        </branch>
        <bustap x2="1520" y1="896" y2="896" x1="1424" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="896" type="branch" />
            <wire x2="1696" y1="896" y2="896" x1="1520" />
            <wire x2="1872" y1="896" y2="896" x1="1696" />
        </branch>
        <bustap x2="1520" y1="240" y2="240" x1="1424" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="240" type="branch" />
            <wire x2="1888" y1="240" y2="240" x1="1520" />
        </branch>
        <bustap x2="1456" y1="2464" y2="2464" x1="1360" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1640" y="2464" type="branch" />
            <wire x2="1824" y1="2464" y2="2464" x1="1456" />
        </branch>
        <bustap x2="1456" y1="1200" y2="1200" x1="1360" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1656" y="1200" type="branch" />
            <wire x2="1856" y1="1200" y2="1200" x1="1456" />
        </branch>
        <bustap x2="1456" y1="544" y2="544" x1="1360" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="544" type="branch" />
            <wire x2="1664" y1="544" y2="544" x1="1456" />
            <wire x2="1872" y1="544" y2="544" x1="1664" />
        </branch>
        <bustap x2="1376" y1="2608" y2="2608" x1="1280" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="2608" type="branch" />
            <wire x2="1600" y1="2608" y2="2608" x1="1376" />
            <wire x2="1824" y1="2608" y2="2608" x1="1600" />
        </branch>
        <bustap x2="1376" y1="2000" y2="2000" x1="1280" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1608" y="2000" type="branch" />
            <wire x2="1840" y1="2000" y2="2000" x1="1376" />
        </branch>
        <bustap x2="1376" y1="1344" y2="1344" x1="1280" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1344" type="branch" />
            <wire x2="1616" y1="1344" y2="1344" x1="1376" />
            <wire x2="1856" y1="1344" y2="1344" x1="1616" />
        </branch>
        <bustap x2="1376" y1="688" y2="688" x1="1280" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1624" y="688" type="branch" />
            <wire x2="1872" y1="688" y2="688" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="352" y="2112" name="I1(3:0)" orien="R180" />
        <branch name="I1(3:0)">
            <wire x2="1632" y1="2112" y2="2112" x1="352" />
            <wire x2="1632" y1="2112" y2="2320" x1="1632" />
            <wire x2="1632" y1="2320" y2="2384" x1="1632" />
            <wire x2="1632" y1="320" y2="320" x1="1584" />
            <wire x2="1584" y1="320" y2="400" x1="1584" />
            <wire x2="1584" y1="400" y2="1056" x1="1584" />
            <wire x2="1632" y1="1056" y2="1056" x1="1584" />
            <wire x2="1632" y1="1056" y2="1712" x1="1632" />
            <wire x2="1632" y1="1712" y2="2112" x1="1632" />
        </branch>
        <bustap x2="1728" y1="2320" y2="2320" x1="1632" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2320" type="branch" />
            <wire x2="1776" y1="2320" y2="2320" x1="1728" />
            <wire x2="1824" y1="2320" y2="2320" x1="1776" />
        </branch>
        <bustap x2="1728" y1="1712" y2="1712" x1="1632" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="1712" type="branch" />
            <wire x2="1792" y1="1712" y2="1712" x1="1728" />
            <wire x2="1840" y1="1712" y2="1712" x1="1792" />
        </branch>
        <bustap x2="1680" y1="1056" y2="1056" x1="1584" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1768" y="1056" type="branch" />
            <wire x2="1776" y1="1056" y2="1056" x1="1680" />
            <wire x2="1856" y1="1056" y2="1056" x1="1776" />
        </branch>
        <bustap x2="1680" y1="400" y2="400" x1="1584" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="400" type="branch" />
            <wire x2="1776" y1="400" y2="400" x1="1680" />
            <wire x2="1872" y1="400" y2="400" x1="1776" />
        </branch>
        <bustap x2="1456" y1="1856" y2="1856" x1="1360" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1856" type="branch" />
            <wire x2="1648" y1="1856" y2="1856" x1="1456" />
            <wire x2="1840" y1="1856" y2="1856" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="352" y="2304" name="I2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="2464" name="I3(3:0)" orien="R180" />
    </sheet>
</drawing>