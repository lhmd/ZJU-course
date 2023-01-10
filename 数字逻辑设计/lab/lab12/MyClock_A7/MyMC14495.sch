<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="ND0" />
        <signal name="ND1" />
        <signal name="ND2" />
        <signal name="ND3" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_46" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="LE" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="point" />
        <signal name="p" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="ND0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="ND1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="ND2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="ND3" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_1">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_59" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_60" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_65" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_40">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_41">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_42">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_39">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND1" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="or4" name="aa">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_30" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_75">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_76">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_77">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_78">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="or4" name="bb">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_34" name="I3" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_80">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_81">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="or3" name="cc">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_32" name="I2" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="or3" name="ee">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_49" name="I2" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="or3" name="gg">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_55" name="I2" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="or4" name="dd">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or4" name="ff">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_52" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_88">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_89">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_90">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND3" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_91">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_92">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_93">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_94">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_95">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_101">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_102">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_103">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_104">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="5520" y="352" name="XLXI_17" orien="R90" />
        <instance x="5776" y="352" name="XLXI_16" orien="R90" />
        <instance x="6032" y="352" name="XLXI_15" orien="R90" />
        <branch name="D0">
            <wire x2="1536" y1="672" y2="672" x1="1024" />
            <wire x2="1536" y1="672" y2="1408" x1="1536" />
            <wire x2="1920" y1="672" y2="672" x1="1536" />
            <wire x2="2208" y1="672" y2="672" x1="1920" />
            <wire x2="2208" y1="672" y2="1408" x1="2208" />
            <wire x2="2592" y1="672" y2="672" x1="2208" />
            <wire x2="2832" y1="672" y2="672" x1="2592" />
            <wire x2="4000" y1="672" y2="672" x1="2832" />
            <wire x2="4640" y1="672" y2="672" x1="4000" />
            <wire x2="4960" y1="672" y2="672" x1="4640" />
            <wire x2="5200" y1="672" y2="672" x1="4960" />
            <wire x2="5248" y1="672" y2="672" x1="5200" />
            <wire x2="5728" y1="672" y2="672" x1="5248" />
            <wire x2="5728" y1="672" y2="1408" x1="5728" />
            <wire x2="5200" y1="672" y2="1408" x1="5200" />
            <wire x2="4960" y1="672" y2="1408" x1="4960" />
            <wire x2="4640" y1="672" y2="1408" x1="4640" />
            <wire x2="4000" y1="672" y2="1408" x1="4000" />
            <wire x2="2832" y1="672" y2="1408" x1="2832" />
            <wire x2="2592" y1="672" y2="1408" x1="2592" />
            <wire x2="1920" y1="672" y2="1408" x1="1920" />
            <wire x2="1024" y1="672" y2="1408" x1="1024" />
            <wire x2="5296" y1="336" y2="336" x1="5248" />
            <wire x2="5360" y1="336" y2="336" x1="5296" />
            <wire x2="5360" y1="336" y2="384" x1="5360" />
            <wire x2="5248" y1="336" y2="672" x1="5248" />
            <wire x2="5296" y1="256" y2="336" x1="5296" />
        </branch>
        <branch name="D3">
            <wire x2="1472" y1="912" y2="1408" x1="1472" />
            <wire x2="3232" y1="912" y2="912" x1="1472" />
            <wire x2="3776" y1="912" y2="912" x1="3232" />
            <wire x2="4128" y1="912" y2="912" x1="3776" />
            <wire x2="4352" y1="912" y2="912" x1="4128" />
            <wire x2="5152" y1="912" y2="912" x1="4352" />
            <wire x2="5392" y1="912" y2="912" x1="5152" />
            <wire x2="5392" y1="912" y2="1408" x1="5392" />
            <wire x2="5984" y1="912" y2="912" x1="5392" />
            <wire x2="5152" y1="912" y2="1408" x1="5152" />
            <wire x2="4352" y1="912" y2="1408" x1="4352" />
            <wire x2="4128" y1="912" y2="1408" x1="4128" />
            <wire x2="3776" y1="912" y2="1408" x1="3776" />
            <wire x2="3232" y1="912" y2="1408" x1="3232" />
            <wire x2="6064" y1="336" y2="336" x1="5984" />
            <wire x2="6064" y1="336" y2="352" x1="6064" />
            <wire x2="5984" y1="336" y2="912" x1="5984" />
            <wire x2="6064" y1="256" y2="336" x1="6064" />
        </branch>
        <iomarker fontsize="28" x="5296" y="256" name="D0" orien="R270" />
        <iomarker fontsize="28" x="5552" y="256" name="D1" orien="R270" />
        <iomarker fontsize="28" x="5808" y="256" name="D2" orien="R270" />
        <iomarker fontsize="28" x="6064" y="256" name="D3" orien="R270" />
        <instance x="5328" y="384" name="XLXI_18" orien="R90" />
        <instance x="5424" y="1408" name="XLXI_40" orien="R90" />
        <instance x="5136" y="1408" name="XLXI_41" orien="R90" />
        <instance x="4896" y="1408" name="XLXI_42" orien="R90" />
        <instance x="5664" y="1408" name="XLXI_39" orien="R90" />
        <instance x="5296" y="1856" name="aa" orien="R90" />
        <branch name="XLXN_27">
            <wire x2="5056" y1="1792" y2="1792" x1="1888" />
            <wire x2="5056" y1="1792" y2="1856" x1="5056" />
            <wire x2="5360" y1="1856" y2="1856" x1="5056" />
            <wire x2="1888" y1="1792" y2="1872" x1="1888" />
            <wire x2="5056" y1="1664" y2="1792" x1="5056" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="5296" y1="1664" y2="1760" x1="5296" />
            <wire x2="5424" y1="1760" y2="1760" x1="5296" />
            <wire x2="5424" y1="1760" y2="1856" x1="5424" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="5824" y1="1696" y2="1696" x1="3072" />
            <wire x2="5824" y1="1696" y2="1856" x1="5824" />
            <wire x2="3072" y1="1696" y2="1872" x1="3072" />
            <wire x2="5824" y1="1856" y2="1856" x1="5552" />
            <wire x2="5824" y1="1664" y2="1696" x1="5824" />
        </branch>
        <instance x="4576" y="1408" name="XLXI_75" orien="R90" />
        <instance x="4368" y="1408" name="XLXI_76" orien="R90" />
        <instance x="4160" y="1408" name="XLXI_77" orien="R90" />
        <instance x="3936" y="1408" name="XLXI_78" orien="R90" />
        <branch name="XLXN_31">
            <wire x2="4064" y1="1664" y2="1856" x1="4064" />
            <wire x2="4304" y1="1856" y2="1856" x1="4064" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="4496" y1="1680" y2="1680" x1="4432" />
            <wire x2="4432" y1="1680" y2="1856" x1="4432" />
            <wire x2="4496" y1="1664" y2="1680" x1="4496" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="4736" y1="1856" y2="1856" x1="4496" />
            <wire x2="4736" y1="1664" y2="1856" x1="4736" />
        </branch>
        <instance x="4240" y="1856" name="bb" orien="R90" />
        <branch name="XLXN_32">
            <wire x2="3664" y1="1680" y2="1856" x1="3664" />
            <wire x2="4288" y1="1680" y2="1680" x1="3664" />
            <wire x2="4368" y1="1680" y2="1680" x1="4288" />
            <wire x2="4368" y1="1680" y2="1856" x1="4368" />
            <wire x2="4288" y1="1664" y2="1680" x1="4288" />
        </branch>
        <branch name="ND0">
            <wire x2="3040" y1="976" y2="976" x1="1280" />
            <wire x2="3360" y1="976" y2="976" x1="3040" />
            <wire x2="4224" y1="976" y2="976" x1="3360" />
            <wire x2="4432" y1="976" y2="976" x1="4224" />
            <wire x2="5360" y1="976" y2="976" x1="4432" />
            <wire x2="5488" y1="976" y2="976" x1="5360" />
            <wire x2="5488" y1="976" y2="1408" x1="5488" />
            <wire x2="4432" y1="976" y2="1408" x1="4432" />
            <wire x2="4224" y1="976" y2="1408" x1="4224" />
            <wire x2="3360" y1="976" y2="1408" x1="3360" />
            <wire x2="3040" y1="976" y2="1408" x1="3040" />
            <wire x2="1280" y1="976" y2="1408" x1="1280" />
            <wire x2="5360" y1="608" y2="976" x1="5360" />
        </branch>
        <instance x="3296" y="1408" name="XLXI_80" orien="R90" />
        <instance x="3584" y="1408" name="XLXI_81" orien="R90" />
        <instance x="3472" y="1856" name="cc" orien="R90" />
        <branch name="XLXN_39">
            <wire x2="3456" y1="1664" y2="1856" x1="3456" />
            <wire x2="3536" y1="1856" y2="1856" x1="3456" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="3712" y1="1664" y2="1664" x1="3600" />
            <wire x2="3600" y1="1664" y2="1856" x1="3600" />
        </branch>
        <instance x="2880" y="1872" name="dd" orien="R90" />
        <instance x="2768" y="1408" name="XLXI_88" orien="R90" />
        <instance x="2976" y="1408" name="XLXI_89" orien="R90" />
        <branch name="XLXN_41">
            <wire x2="2896" y1="1664" y2="1872" x1="2896" />
            <wire x2="2944" y1="1872" y2="1872" x1="2896" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="3008" y1="1664" y2="1872" x1="3008" />
            <wire x2="3136" y1="1664" y2="1664" x1="3008" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="5488" y1="1728" y2="1728" x1="3136" />
            <wire x2="5488" y1="1728" y2="1856" x1="5488" />
            <wire x2="5584" y1="1728" y2="1728" x1="5488" />
            <wire x2="3136" y1="1728" y2="1872" x1="3136" />
            <wire x2="5584" y1="1664" y2="1728" x1="5584" />
        </branch>
        <instance x="2384" y="1872" name="ee" orien="R90" />
        <instance x="2144" y="1408" name="XLXI_90" orien="R90" />
        <instance x="2320" y="1408" name="XLXI_91" orien="R90" />
        <instance x="2528" y="1408" name="XLXI_92" orien="R90" />
        <branch name="XLXN_46">
            <wire x2="2240" y1="1664" y2="1760" x1="2240" />
            <wire x2="2448" y1="1760" y2="1760" x1="2240" />
            <wire x2="2448" y1="1760" y2="1872" x1="2448" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="2448" y1="1664" y2="1744" x1="2448" />
            <wire x2="2512" y1="1744" y2="1744" x1="2448" />
            <wire x2="2512" y1="1744" y2="1872" x1="2512" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="2656" y1="1872" y2="1872" x1="2576" />
            <wire x2="2656" y1="1664" y2="1872" x1="2656" />
        </branch>
        <instance x="1856" y="1408" name="XLXI_93" orien="R90" />
        <instance x="1664" y="1408" name="XLXI_94" orien="R90" />
        <instance x="1472" y="1408" name="XLXI_95" orien="R90" />
        <instance x="1632" y="1872" name="ff" orien="R90" />
        <branch name="XLXN_50">
            <wire x2="1600" y1="1664" y2="1872" x1="1600" />
            <wire x2="1696" y1="1872" y2="1872" x1="1600" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1760" y1="1760" y2="1872" x1="1760" />
            <wire x2="1792" y1="1760" y2="1760" x1="1760" />
            <wire x2="1792" y1="1664" y2="1760" x1="1792" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1824" y1="1760" y2="1872" x1="1824" />
            <wire x2="1984" y1="1760" y2="1760" x1="1824" />
            <wire x2="1984" y1="1664" y2="1760" x1="1984" />
        </branch>
        <instance x="1216" y="1408" name="XLXI_102" orien="R90" />
        <instance x="960" y="1408" name="XLXI_103" orien="R90" />
        <instance x="768" y="1392" name="XLXI_101" orien="R90" />
        <instance x="992" y="1856" name="gg" orien="R90" />
        <branch name="XLXN_53">
            <wire x2="896" y1="1648" y2="1856" x1="896" />
            <wire x2="1056" y1="1856" y2="1856" x1="896" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1120" y1="1664" y2="1856" x1="1120" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1376" y1="1856" y2="1856" x1="1184" />
            <wire x2="1376" y1="1664" y2="1856" x1="1376" />
        </branch>
        <instance x="1664" y="2336" name="XLXI_6" orien="R90" />
        <instance x="992" y="2336" name="XLXI_7" orien="R90" />
        <instance x="3472" y="2320" name="XLXI_3" orien="R90" />
        <instance x="2912" y="2320" name="XLXI_4" orien="R90" />
        <instance x="4272" y="2320" name="XLXI_2" orien="R90" />
        <instance x="5328" y="2336" name="XLXI_1" orien="R90" />
        <branch name="XLXN_58">
            <wire x2="5456" y1="2112" y2="2336" x1="5456" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="4400" y1="2112" y2="2320" x1="4400" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="3600" y1="2112" y2="2320" x1="3600" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="3040" y1="2128" y2="2320" x1="3040" />
        </branch>
        <branch name="LE">
            <wire x2="608" y1="528" y2="2208" x1="608" />
            <wire x2="1056" y1="2208" y2="2208" x1="608" />
            <wire x2="1056" y1="2208" y2="2336" x1="1056" />
            <wire x2="1728" y1="2208" y2="2208" x1="1056" />
            <wire x2="1728" y1="2208" y2="2336" x1="1728" />
            <wire x2="2448" y1="2208" y2="2208" x1="1728" />
            <wire x2="2976" y1="2208" y2="2208" x1="2448" />
            <wire x2="2976" y1="2208" y2="2320" x1="2976" />
            <wire x2="3536" y1="2208" y2="2208" x1="2976" />
            <wire x2="3536" y1="2208" y2="2320" x1="3536" />
            <wire x2="4336" y1="2208" y2="2208" x1="3536" />
            <wire x2="5392" y1="2208" y2="2208" x1="4336" />
            <wire x2="5392" y1="2208" y2="2336" x1="5392" />
            <wire x2="4336" y1="2208" y2="2320" x1="4336" />
            <wire x2="2448" y1="2208" y2="2336" x1="2448" />
        </branch>
        <instance x="2384" y="2336" name="XLXI_5" orien="R90" />
        <branch name="XLXN_63">
            <wire x2="2512" y1="2128" y2="2336" x1="2512" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1792" y1="2128" y2="2336" x1="1792" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1120" y1="2112" y2="2336" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="608" y="528" name="LE" orien="R270" />
        <instance x="416" y="1008" name="XLXI_104" orien="R90" />
        <branch name="point">
            <wire x2="448" y1="544" y2="1008" x1="448" />
        </branch>
        <branch name="p">
            <wire x2="448" y1="1232" y2="1680" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="544" name="point" orien="R270" />
        <iomarker fontsize="28" x="448" y="1680" name="p" orien="R90" />
        <branch name="g">
            <wire x2="1088" y1="2592" y2="2688" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="2688" name="g" orien="R90" />
        <branch name="f">
            <wire x2="1760" y1="2592" y2="2704" x1="1760" />
        </branch>
        <branch name="e">
            <wire x2="2480" y1="2592" y2="2720" x1="2480" />
        </branch>
        <branch name="d">
            <wire x2="3008" y1="2576" y2="2720" x1="3008" />
        </branch>
        <branch name="c">
            <wire x2="3568" y1="2576" y2="2720" x1="3568" />
        </branch>
        <branch name="b">
            <wire x2="4368" y1="2576" y2="2752" x1="4368" />
        </branch>
        <branch name="a">
            <wire x2="5424" y1="2592" y2="2768" x1="5424" />
        </branch>
        <iomarker fontsize="28" x="1760" y="2704" name="f" orien="R90" />
        <iomarker fontsize="28" x="2480" y="2720" name="e" orien="R90" />
        <iomarker fontsize="28" x="3008" y="2720" name="d" orien="R90" />
        <iomarker fontsize="28" x="3568" y="2720" name="c" orien="R90" />
        <iomarker fontsize="28" x="4368" y="2752" name="b" orien="R90" />
        <iomarker fontsize="28" x="5424" y="2768" name="a" orien="R90" />
        <branch name="ND2">
            <wire x2="896" y1="1104" y2="1392" x1="896" />
            <wire x2="1600" y1="1104" y2="1104" x1="896" />
            <wire x2="1600" y1="1104" y2="1408" x1="1600" />
            <wire x2="1792" y1="1104" y2="1104" x1="1600" />
            <wire x2="1792" y1="1104" y2="1408" x1="1792" />
            <wire x2="2720" y1="1104" y2="1104" x1="1792" />
            <wire x2="2720" y1="1104" y2="1408" x1="2720" />
            <wire x2="3168" y1="1104" y2="1104" x1="2720" />
            <wire x2="3488" y1="1104" y2="1104" x1="3168" />
            <wire x2="3488" y1="1104" y2="1408" x1="3488" />
            <wire x2="5088" y1="1104" y2="1104" x1="3488" />
            <wire x2="5792" y1="1104" y2="1104" x1="5088" />
            <wire x2="5808" y1="1104" y2="1104" x1="5792" />
            <wire x2="5792" y1="1104" y2="1408" x1="5792" />
            <wire x2="5088" y1="1104" y2="1408" x1="5088" />
            <wire x2="3168" y1="1104" y2="1408" x1="3168" />
            <wire x2="5808" y1="576" y2="1104" x1="5808" />
        </branch>
        <branch name="D1">
            <wire x2="1088" y1="768" y2="1408" x1="1088" />
            <wire x2="1728" y1="768" y2="768" x1="1088" />
            <wire x2="1728" y1="768" y2="1408" x1="1728" />
            <wire x2="1984" y1="768" y2="768" x1="1728" />
            <wire x2="1984" y1="768" y2="1408" x1="1984" />
            <wire x2="2896" y1="768" y2="768" x1="1984" />
            <wire x2="2896" y1="768" y2="1408" x1="2896" />
            <wire x2="3104" y1="768" y2="768" x1="2896" />
            <wire x2="3104" y1="768" y2="1408" x1="3104" />
            <wire x2="3424" y1="768" y2="768" x1="3104" />
            <wire x2="3424" y1="768" y2="1408" x1="3424" />
            <wire x2="3648" y1="768" y2="768" x1="3424" />
            <wire x2="3648" y1="768" y2="1408" x1="3648" />
            <wire x2="4064" y1="768" y2="768" x1="3648" />
            <wire x2="4064" y1="768" y2="1408" x1="4064" />
            <wire x2="4496" y1="768" y2="768" x1="4064" />
            <wire x2="4496" y1="768" y2="1408" x1="4496" />
            <wire x2="5024" y1="768" y2="768" x1="4496" />
            <wire x2="5024" y1="768" y2="1408" x1="5024" />
            <wire x2="5472" y1="768" y2="768" x1="5024" />
            <wire x2="5552" y1="336" y2="336" x1="5472" />
            <wire x2="5552" y1="336" y2="352" x1="5552" />
            <wire x2="5472" y1="336" y2="768" x1="5472" />
            <wire x2="5552" y1="256" y2="336" x1="5552" />
        </branch>
        <branch name="ND1">
            <wire x2="832" y1="1040" y2="1392" x1="832" />
            <wire x2="1344" y1="1040" y2="1040" x1="832" />
            <wire x2="1344" y1="1040" y2="1408" x1="1344" />
            <wire x2="2384" y1="1040" y2="1040" x1="1344" />
            <wire x2="2384" y1="1040" y2="1408" x1="2384" />
            <wire x2="2656" y1="1040" y2="1040" x1="2384" />
            <wire x2="2656" y1="1040" y2="1408" x1="2656" />
            <wire x2="4704" y1="1040" y2="1040" x1="2656" />
            <wire x2="4704" y1="1040" y2="1408" x1="4704" />
            <wire x2="5264" y1="1040" y2="1040" x1="4704" />
            <wire x2="5552" y1="1040" y2="1040" x1="5264" />
            <wire x2="5856" y1="1040" y2="1040" x1="5552" />
            <wire x2="5856" y1="1040" y2="1408" x1="5856" />
            <wire x2="5552" y1="1040" y2="1408" x1="5552" />
            <wire x2="5264" y1="1040" y2="1408" x1="5264" />
            <wire x2="5552" y1="576" y2="1040" x1="5552" />
        </branch>
        <branch name="ND3">
            <wire x2="960" y1="1168" y2="1392" x1="960" />
            <wire x2="1216" y1="1168" y2="1168" x1="960" />
            <wire x2="1216" y1="1168" y2="1408" x1="1216" />
            <wire x2="1664" y1="1168" y2="1168" x1="1216" />
            <wire x2="1664" y1="1168" y2="1408" x1="1664" />
            <wire x2="1856" y1="1168" y2="1168" x1="1664" />
            <wire x2="1856" y1="1168" y2="1408" x1="1856" />
            <wire x2="2048" y1="1168" y2="1168" x1="1856" />
            <wire x2="2048" y1="1168" y2="1408" x1="2048" />
            <wire x2="2272" y1="1168" y2="1168" x1="2048" />
            <wire x2="2272" y1="1168" y2="1408" x1="2272" />
            <wire x2="2512" y1="1168" y2="1168" x1="2272" />
            <wire x2="2512" y1="1168" y2="1408" x1="2512" />
            <wire x2="3552" y1="1168" y2="1168" x1="2512" />
            <wire x2="4832" y1="1168" y2="1168" x1="3552" />
            <wire x2="5680" y1="1168" y2="1168" x1="4832" />
            <wire x2="5920" y1="1168" y2="1168" x1="5680" />
            <wire x2="6064" y1="1168" y2="1168" x1="5920" />
            <wire x2="5920" y1="1168" y2="1408" x1="5920" />
            <wire x2="5680" y1="1168" y2="1408" x1="5680" />
            <wire x2="4832" y1="1168" y2="1408" x1="4832" />
            <wire x2="3552" y1="1168" y2="1408" x1="3552" />
            <wire x2="6064" y1="576" y2="1168" x1="6064" />
        </branch>
        <branch name="D2">
            <wire x2="1152" y1="848" y2="1408" x1="1152" />
            <wire x2="1408" y1="848" y2="848" x1="1152" />
            <wire x2="1408" y1="848" y2="1408" x1="1408" />
            <wire x2="2448" y1="848" y2="848" x1="1408" />
            <wire x2="2448" y1="848" y2="1408" x1="2448" />
            <wire x2="2960" y1="848" y2="848" x1="2448" />
            <wire x2="2960" y1="848" y2="1408" x1="2960" />
            <wire x2="3712" y1="848" y2="848" x1="2960" />
            <wire x2="3712" y1="848" y2="1408" x1="3712" />
            <wire x2="4288" y1="848" y2="848" x1="3712" />
            <wire x2="4288" y1="848" y2="1408" x1="4288" />
            <wire x2="4560" y1="848" y2="848" x1="4288" />
            <wire x2="4560" y1="848" y2="1408" x1="4560" />
            <wire x2="4768" y1="848" y2="848" x1="4560" />
            <wire x2="4768" y1="848" y2="1408" x1="4768" />
            <wire x2="5328" y1="848" y2="848" x1="4768" />
            <wire x2="5616" y1="848" y2="848" x1="5328" />
            <wire x2="5616" y1="848" y2="1408" x1="5616" />
            <wire x2="5680" y1="848" y2="848" x1="5616" />
            <wire x2="5328" y1="848" y2="1408" x1="5328" />
            <wire x2="5808" y1="336" y2="336" x1="5680" />
            <wire x2="5808" y1="336" y2="352" x1="5808" />
            <wire x2="5680" y1="336" y2="848" x1="5680" />
            <wire x2="5808" y1="256" y2="336" x1="5808" />
        </branch>
    </sheet>
</drawing>