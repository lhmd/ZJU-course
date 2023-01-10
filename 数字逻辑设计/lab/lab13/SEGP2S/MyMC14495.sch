<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="point" />
        <signal name="LE" />
        <signal name="P" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="point" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="P" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D3" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_7">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4" name="aleft">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="D2" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_15">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_16">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_17">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="D2" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_19">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D0" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_21">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_22">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_23">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_24">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_25">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="D0" name="I2" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_26">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_27">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_28">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_29">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_30">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_31">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_32">
            <blockpin signalname="XLXN_69" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="XLXN_67" name="I2" />
            <blockpin signalname="XLXN_66" name="I3" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_33">
            <blockpin signalname="XLXN_72" name="I0" />
            <blockpin signalname="XLXN_71" name="I1" />
            <blockpin signalname="XLXN_70" name="I2" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_34">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_35">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="XLXN_60" name="I1" />
            <blockpin signalname="XLXN_59" name="I2" />
            <blockpin signalname="XLXN_58" name="I3" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_36">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="XLXN_62" name="I2" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_45">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="P" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="XLXN_82" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="XLXN_81" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_48">
            <blockpin signalname="XLXN_80" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_50">
            <blockpin signalname="XLXN_78" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_51">
            <blockpin signalname="XLXN_77" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_52">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="2704" y="1616" name="XLXI_1" orien="R90" />
        <instance x="2928" y="1616" name="XLXI_2" orien="R90" />
        <instance x="3136" y="1616" name="XLXI_3" orien="R90" />
        <instance x="3328" y="1632" name="XLXI_4" orien="R90" />
        <branch name="D3">
            <wire x2="608" y1="1888" y2="1888" x1="512" />
            <wire x2="720" y1="1888" y2="1888" x1="608" />
            <wire x2="2512" y1="1888" y2="1888" x1="720" />
            <wire x2="2656" y1="1888" y2="1888" x1="2512" />
            <wire x2="2768" y1="1888" y2="1888" x1="2656" />
            <wire x2="2768" y1="1888" y2="2288" x1="2768" />
            <wire x2="2800" y1="1888" y2="1888" x1="2768" />
            <wire x2="3408" y1="1888" y2="1888" x1="2800" />
            <wire x2="4336" y1="1888" y2="1888" x1="3408" />
            <wire x2="4624" y1="1888" y2="1888" x1="4336" />
            <wire x2="4832" y1="1888" y2="1888" x1="4624" />
            <wire x2="4896" y1="1888" y2="1888" x1="4832" />
            <wire x2="5280" y1="1888" y2="1888" x1="4896" />
            <wire x2="5760" y1="1888" y2="1888" x1="5280" />
            <wire x2="6224" y1="1888" y2="1888" x1="5760" />
            <wire x2="5760" y1="1888" y2="2768" x1="5760" />
            <wire x2="5280" y1="1888" y2="2768" x1="5280" />
            <wire x2="4832" y1="1888" y2="2800" x1="4832" />
            <wire x2="4624" y1="1888" y2="2800" x1="4624" />
            <wire x2="4336" y1="1888" y2="2832" x1="4336" />
            <wire x2="2800" y1="1888" y2="2704" x1="2800" />
            <wire x2="2512" y1="1888" y2="2704" x1="2512" />
            <wire x2="720" y1="1888" y2="2736" x1="720" />
            <wire x2="512" y1="1888" y2="2736" x1="512" />
            <wire x2="2736" y1="1600" y2="1600" x1="2656" />
            <wire x2="2736" y1="1600" y2="1616" x1="2736" />
            <wire x2="2656" y1="1600" y2="1888" x1="2656" />
            <wire x2="2736" y1="1552" y2="1600" x1="2736" />
            <wire x2="2736" y1="2288" y2="2704" x1="2736" />
            <wire x2="2768" y1="2288" y2="2288" x1="2736" />
        </branch>
        <branch name="D2">
            <wire x2="320" y1="2368" y2="2736" x1="320" />
            <wire x2="528" y1="2368" y2="2368" x1="320" />
            <wire x2="528" y1="1984" y2="2368" x1="528" />
            <wire x2="592" y1="1984" y2="1984" x1="528" />
            <wire x2="784" y1="1984" y2="1984" x1="592" />
            <wire x2="784" y1="1984" y2="2736" x1="784" />
            <wire x2="1280" y1="1984" y2="1984" x1="784" />
            <wire x2="1936" y1="1984" y2="1984" x1="1280" />
            <wire x2="2896" y1="1984" y2="1984" x1="1936" />
            <wire x2="3280" y1="1984" y2="1984" x1="2896" />
            <wire x2="3280" y1="1984" y2="2736" x1="3280" />
            <wire x2="3616" y1="1984" y2="1984" x1="3280" />
            <wire x2="3616" y1="1984" y2="2784" x1="3616" />
            <wire x2="4112" y1="1984" y2="1984" x1="3616" />
            <wire x2="4688" y1="1984" y2="1984" x1="4112" />
            <wire x2="4896" y1="1984" y2="1984" x1="4688" />
            <wire x2="5344" y1="1984" y2="1984" x1="4896" />
            <wire x2="5504" y1="1984" y2="1984" x1="5344" />
            <wire x2="6080" y1="1984" y2="1984" x1="5504" />
            <wire x2="6240" y1="1984" y2="1984" x1="6080" />
            <wire x2="6080" y1="1984" y2="2768" x1="6080" />
            <wire x2="5504" y1="1984" y2="2768" x1="5504" />
            <wire x2="5344" y1="1984" y2="2768" x1="5344" />
            <wire x2="4896" y1="1984" y2="2800" x1="4896" />
            <wire x2="4688" y1="1984" y2="2800" x1="4688" />
            <wire x2="4112" y1="1984" y2="2784" x1="4112" />
            <wire x2="1936" y1="1984" y2="2720" x1="1936" />
            <wire x2="592" y1="1984" y2="2336" x1="592" />
            <wire x2="576" y1="2336" y2="2736" x1="576" />
            <wire x2="592" y1="2336" y2="2336" x1="576" />
            <wire x2="2960" y1="1600" y2="1600" x1="2896" />
            <wire x2="2960" y1="1600" y2="1616" x1="2960" />
            <wire x2="2896" y1="1600" y2="1984" x1="2896" />
            <wire x2="2960" y1="1552" y2="1600" x1="2960" />
        </branch>
        <branch name="D0">
            <wire x2="448" y1="2176" y2="2176" x1="432" />
            <wire x2="912" y1="2176" y2="2176" x1="448" />
            <wire x2="912" y1="2176" y2="2736" x1="912" />
            <wire x2="1088" y1="2176" y2="2176" x1="912" />
            <wire x2="1088" y1="2176" y2="2736" x1="1088" />
            <wire x2="1472" y1="2176" y2="2176" x1="1088" />
            <wire x2="1696" y1="2176" y2="2176" x1="1472" />
            <wire x2="1760" y1="2176" y2="2176" x1="1696" />
            <wire x2="1760" y1="2176" y2="2704" x1="1760" />
            <wire x2="2192" y1="2176" y2="2176" x1="1760" />
            <wire x2="2704" y1="2176" y2="2176" x1="2192" />
            <wire x2="2928" y1="2176" y2="2176" x1="2704" />
            <wire x2="3136" y1="2176" y2="2176" x1="2928" />
            <wire x2="3296" y1="2176" y2="2176" x1="3136" />
            <wire x2="3440" y1="2176" y2="2176" x1="3296" />
            <wire x2="3984" y1="2176" y2="2176" x1="3440" />
            <wire x2="3984" y1="2176" y2="2784" x1="3984" />
            <wire x2="4240" y1="2176" y2="2176" x1="3984" />
            <wire x2="5888" y1="2176" y2="2176" x1="4240" />
            <wire x2="6208" y1="2176" y2="2176" x1="5888" />
            <wire x2="6240" y1="2176" y2="2176" x1="6208" />
            <wire x2="6208" y1="2176" y2="2736" x1="6208" />
            <wire x2="6208" y1="2736" y2="2752" x1="6208" />
            <wire x2="6208" y1="2752" y2="2768" x1="6208" />
            <wire x2="5888" y1="2176" y2="2768" x1="5888" />
            <wire x2="4240" y1="2176" y2="2784" x1="4240" />
            <wire x2="3136" y1="2176" y2="2704" x1="3136" />
            <wire x2="2928" y1="2176" y2="2704" x1="2928" />
            <wire x2="2704" y1="2176" y2="2704" x1="2704" />
            <wire x2="2192" y1="2176" y2="2720" x1="2192" />
            <wire x2="1472" y1="2176" y2="2752" x1="1472" />
            <wire x2="448" y1="2176" y2="2736" x1="448" />
            <wire x2="3360" y1="1600" y2="1600" x1="3296" />
            <wire x2="3360" y1="1600" y2="1632" x1="3360" />
            <wire x2="3296" y1="1600" y2="2176" x1="3296" />
            <wire x2="3360" y1="1552" y2="1600" x1="3360" />
        </branch>
        <branch name="D1">
            <wire x2="384" y1="2672" y2="2736" x1="384" />
            <wire x2="416" y1="2672" y2="2672" x1="384" />
            <wire x2="416" y1="2064" y2="2672" x1="416" />
            <wire x2="448" y1="2064" y2="2064" x1="416" />
            <wire x2="1088" y1="2064" y2="2064" x1="448" />
            <wire x2="1216" y1="2064" y2="2064" x1="1088" />
            <wire x2="1280" y1="2064" y2="2064" x1="1216" />
            <wire x2="1280" y1="2064" y2="2736" x1="1280" />
            <wire x2="1408" y1="2064" y2="2064" x1="1280" />
            <wire x2="2640" y1="2064" y2="2064" x1="1408" />
            <wire x2="3104" y1="2064" y2="2064" x1="2640" />
            <wire x2="3344" y1="2064" y2="2064" x1="3104" />
            <wire x2="3424" y1="2064" y2="2064" x1="3344" />
            <wire x2="4176" y1="2064" y2="2064" x1="3424" />
            <wire x2="4176" y1="2064" y2="2784" x1="4176" />
            <wire x2="4464" y1="2064" y2="2064" x1="4176" />
            <wire x2="4960" y1="2064" y2="2064" x1="4464" />
            <wire x2="5136" y1="2064" y2="2064" x1="4960" />
            <wire x2="5568" y1="2064" y2="2064" x1="5136" />
            <wire x2="5712" y1="2064" y2="2064" x1="5568" />
            <wire x2="5824" y1="2064" y2="2064" x1="5712" />
            <wire x2="6224" y1="2064" y2="2064" x1="5824" />
            <wire x2="5824" y1="2064" y2="2768" x1="5824" />
            <wire x2="5568" y1="2064" y2="2768" x1="5568" />
            <wire x2="5136" y1="2064" y2="2800" x1="5136" />
            <wire x2="4960" y1="2064" y2="2800" x1="4960" />
            <wire x2="4464" y1="2064" y2="2832" x1="4464" />
            <wire x2="2640" y1="2064" y2="2688" x1="2640" />
            <wire x2="2640" y1="2688" y2="2704" x1="2640" />
            <wire x2="1408" y1="2064" y2="2752" x1="1408" />
            <wire x2="3168" y1="1600" y2="1600" x1="3104" />
            <wire x2="3168" y1="1600" y2="1616" x1="3168" />
            <wire x2="3104" y1="1600" y2="2064" x1="3104" />
            <wire x2="3168" y1="1552" y2="1600" x1="3168" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="704" y1="2464" y2="2464" x1="176" />
            <wire x2="1696" y1="2464" y2="2464" x1="704" />
            <wire x2="3360" y1="2464" y2="2464" x1="1696" />
            <wire x2="3408" y1="2464" y2="2464" x1="3360" />
            <wire x2="3408" y1="2464" y2="2736" x1="3408" />
            <wire x2="3744" y1="2464" y2="2464" x1="3408" />
            <wire x2="3744" y1="2464" y2="2768" x1="3744" />
            <wire x2="3744" y1="2768" y2="2784" x1="3744" />
            <wire x2="4528" y1="2464" y2="2464" x1="3744" />
            <wire x2="4752" y1="2464" y2="2464" x1="4528" />
            <wire x2="5200" y1="2464" y2="2464" x1="4752" />
            <wire x2="5408" y1="2464" y2="2464" x1="5200" />
            <wire x2="5632" y1="2464" y2="2464" x1="5408" />
            <wire x2="6224" y1="2464" y2="2464" x1="5632" />
            <wire x2="5632" y1="2464" y2="2768" x1="5632" />
            <wire x2="5408" y1="2464" y2="2768" x1="5408" />
            <wire x2="5200" y1="2464" y2="2800" x1="5200" />
            <wire x2="4752" y1="2464" y2="2800" x1="4752" />
            <wire x2="4528" y1="2464" y2="2832" x1="4528" />
            <wire x2="704" y1="2464" y2="2640" x1="704" />
            <wire x2="704" y1="2640" y2="2736" x1="704" />
            <wire x2="3360" y1="1856" y2="1920" x1="3360" />
            <wire x2="3408" y1="1920" y2="1920" x1="3360" />
            <wire x2="3408" y1="1920" y2="2240" x1="3408" />
            <wire x2="3408" y1="2240" y2="2240" x1="3360" />
            <wire x2="3360" y1="2240" y2="2464" x1="3360" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="320" y1="2352" y2="2352" x1="144" />
            <wire x2="1024" y1="2352" y2="2352" x1="320" />
            <wire x2="1024" y1="2352" y2="2736" x1="1024" />
            <wire x2="1216" y1="2352" y2="2352" x1="1024" />
            <wire x2="2064" y1="2352" y2="2352" x1="1216" />
            <wire x2="2960" y1="2352" y2="2352" x1="2064" />
            <wire x2="3008" y1="2352" y2="2352" x1="2960" />
            <wire x2="3488" y1="2352" y2="2352" x1="3008" />
            <wire x2="3856" y1="2352" y2="2352" x1="3488" />
            <wire x2="3856" y1="2352" y2="2784" x1="3856" />
            <wire x2="4400" y1="2352" y2="2352" x1="3856" />
            <wire x2="5072" y1="2352" y2="2352" x1="4400" />
            <wire x2="6240" y1="2352" y2="2352" x1="5072" />
            <wire x2="5072" y1="2352" y2="2800" x1="5072" />
            <wire x2="4400" y1="2352" y2="2832" x1="4400" />
            <wire x2="3008" y1="2352" y2="2704" x1="3008" />
            <wire x2="2064" y1="2352" y2="2720" x1="2064" />
            <wire x2="1216" y1="2352" y2="2736" x1="1216" />
            <wire x2="144" y1="2352" y2="2736" x1="144" />
            <wire x2="2960" y1="1840" y2="2352" x1="2960" />
        </branch>
        <instance x="2672" y="2704" name="XLXI_5" orien="R90" />
        <instance x="2448" y="2704" name="XLXI_6" orien="R90" />
        <branch name="XLXN_14">
            <wire x2="256" y1="2400" y2="2400" x1="208" />
            <wire x2="384" y1="2400" y2="2400" x1="256" />
            <wire x2="640" y1="2400" y2="2400" x1="384" />
            <wire x2="848" y1="2400" y2="2400" x1="640" />
            <wire x2="2000" y1="2400" y2="2400" x1="848" />
            <wire x2="2000" y1="2400" y2="2720" x1="2000" />
            <wire x2="2128" y1="2400" y2="2400" x1="2000" />
            <wire x2="2944" y1="2400" y2="2400" x1="2128" />
            <wire x2="3168" y1="2400" y2="2400" x1="2944" />
            <wire x2="3344" y1="2400" y2="2400" x1="3168" />
            <wire x2="3344" y1="2400" y2="2736" x1="3344" />
            <wire x2="3680" y1="2400" y2="2400" x1="3344" />
            <wire x2="3680" y1="2400" y2="2784" x1="3680" />
            <wire x2="3920" y1="2400" y2="2400" x1="3680" />
            <wire x2="6144" y1="2400" y2="2400" x1="3920" />
            <wire x2="6240" y1="2400" y2="2400" x1="6144" />
            <wire x2="6144" y1="2400" y2="2768" x1="6144" />
            <wire x2="3920" y1="2400" y2="2784" x1="3920" />
            <wire x2="2944" y1="2400" y2="2704" x1="2944" />
            <wire x2="2128" y1="2400" y2="2720" x1="2128" />
            <wire x2="848" y1="2400" y2="2736" x1="848" />
            <wire x2="640" y1="2400" y2="2736" x1="640" />
            <wire x2="208" y1="2400" y2="2736" x1="208" />
            <wire x2="3168" y1="1840" y2="2400" x1="3168" />
        </branch>
        <instance x="2880" y="2704" name="XLXI_7" orien="R90" />
        <branch name="XLXN_15">
            <wire x2="80" y1="2256" y2="2736" x1="80" />
            <wire x2="240" y1="2256" y2="2256" x1="80" />
            <wire x2="256" y1="2256" y2="2256" x1="240" />
            <wire x2="272" y1="2256" y2="2256" x1="256" />
            <wire x2="336" y1="2256" y2="2256" x1="272" />
            <wire x2="960" y1="2256" y2="2256" x1="336" />
            <wire x2="960" y1="2256" y2="2736" x1="960" />
            <wire x2="1152" y1="2256" y2="2256" x1="960" />
            <wire x2="1152" y1="2256" y2="2736" x1="1152" />
            <wire x2="1344" y1="2256" y2="2256" x1="1152" />
            <wire x2="1680" y1="2256" y2="2256" x1="1344" />
            <wire x2="1696" y1="2256" y2="2256" x1="1680" />
            <wire x2="1872" y1="2256" y2="2256" x1="1696" />
            <wire x2="2576" y1="2256" y2="2256" x1="1872" />
            <wire x2="2736" y1="2256" y2="2256" x1="2576" />
            <wire x2="2864" y1="2256" y2="2256" x1="2736" />
            <wire x2="3072" y1="2256" y2="2256" x1="2864" />
            <wire x2="3216" y1="2256" y2="2256" x1="3072" />
            <wire x2="3216" y1="2256" y2="2736" x1="3216" />
            <wire x2="3552" y1="2256" y2="2256" x1="3216" />
            <wire x2="3552" y1="2256" y2="2784" x1="3552" />
            <wire x2="3792" y1="2256" y2="2256" x1="3552" />
            <wire x2="5008" y1="2256" y2="2256" x1="3792" />
            <wire x2="6016" y1="2256" y2="2256" x1="5008" />
            <wire x2="6224" y1="2256" y2="2256" x1="6016" />
            <wire x2="6016" y1="2256" y2="2448" x1="6016" />
            <wire x2="6016" y1="2448" y2="2768" x1="6016" />
            <wire x2="5008" y1="2256" y2="2800" x1="5008" />
            <wire x2="3792" y1="2256" y2="2784" x1="3792" />
            <wire x2="3072" y1="2256" y2="2704" x1="3072" />
            <wire x2="2864" y1="2256" y2="2704" x1="2864" />
            <wire x2="2576" y1="2256" y2="2704" x1="2576" />
            <wire x2="1872" y1="2256" y2="2720" x1="1872" />
            <wire x2="1680" y1="2256" y2="2480" x1="1680" />
            <wire x2="1696" y1="2480" y2="2480" x1="1680" />
            <wire x2="1696" y1="2480" y2="2704" x1="1696" />
            <wire x2="1344" y1="2256" y2="2752" x1="1344" />
            <wire x2="240" y1="2256" y2="2448" x1="240" />
            <wire x2="256" y1="2448" y2="2448" x1="240" />
            <wire x2="256" y1="2448" y2="2736" x1="256" />
            <wire x2="2736" y1="1840" y2="2256" x1="2736" />
        </branch>
        <instance x="3152" y="2736" name="aleft" orien="R90" />
        <instance x="5952" y="2768" name="XLXI_9" orien="R90" />
        <instance x="5696" y="2768" name="XLXI_10" orien="R90" />
        <instance x="5440" y="2768" name="XLXI_11" orien="R90" />
        <instance x="5216" y="2768" name="XLXI_12" orien="R90" />
        <instance x="4768" y="2800" name="XLXI_13" orien="R90" />
        <instance x="4560" y="2800" name="XLXI_14" orien="R90" />
        <instance x="4944" y="2800" name="XLXI_15" orien="R90" />
        <instance x="3488" y="2784" name="XLXI_16" orien="R90" />
        <instance x="3728" y="2784" name="XLXI_17" orien="R90" />
        <instance x="4048" y="2784" name="XLXI_18" orien="R90" />
        <instance x="4272" y="2832" name="XLXI_19" orien="R90" />
        <instance x="1632" y="2704" name="XLXI_20" orien="R90" />
        <instance x="1808" y="2720" name="XLXI_21" orien="R90" />
        <instance x="2000" y="2720" name="XLXI_22" orien="R90" />
        <instance x="1280" y="2752" name="XLXI_23" orien="R90" />
        <instance x="1088" y="2736" name="XLXI_24" orien="R90" />
        <instance x="896" y="2736" name="XLXI_25" orien="R90" />
        <instance x="656" y="2736" name="XLXI_26" orien="R90" />
        <instance x="192" y="2736" name="XLXI_27" orien="R90" />
        <instance x="448" y="2736" name="XLXI_28" orien="R90" />
        <instance x="16" y="2736" name="XLXI_29" orien="R90" />
        <instance x="5840" y="3360" name="XLXI_30" orien="R90" />
        <instance x="4960" y="3408" name="XLXI_31" orien="R90" />
        <instance x="1424" y="3456" name="XLXI_32" orien="R90" />
        <instance x="592" y="3472" name="XLXI_33" orien="R90" />
        <branch name="XLXN_16">
            <wire x2="2608" y1="2960" y2="3360" x1="2608" />
            <wire x2="5904" y1="3360" y2="3360" x1="2608" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2832" y1="2960" y2="3152" x1="2832" />
            <wire x2="5968" y1="3152" y2="3152" x1="2832" />
            <wire x2="5968" y1="3152" y2="3360" x1="5968" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="3040" y1="2960" y2="3136" x1="3040" />
            <wire x2="6032" y1="3136" y2="3136" x1="3040" />
            <wire x2="6032" y1="3136" y2="3360" x1="6032" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="3312" y1="2992" y2="3120" x1="3312" />
            <wire x2="6096" y1="3120" y2="3120" x1="3312" />
            <wire x2="6096" y1="3120" y2="3360" x1="6096" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="6112" y1="3040" y2="3040" x1="5216" />
            <wire x2="5216" y1="3040" y2="3408" x1="5216" />
            <wire x2="6112" y1="3024" y2="3040" x1="6112" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="5152" y1="3216" y2="3408" x1="5152" />
            <wire x2="5824" y1="3216" y2="3216" x1="5152" />
            <wire x2="5824" y1="3024" y2="3216" x1="5824" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="5088" y1="3200" y2="3408" x1="5088" />
            <wire x2="5568" y1="3200" y2="3200" x1="5088" />
            <wire x2="5568" y1="3024" y2="3200" x1="5568" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="5024" y1="3184" y2="3408" x1="5024" />
            <wire x2="5344" y1="3184" y2="3184" x1="5024" />
            <wire x2="5344" y1="3024" y2="3184" x1="5344" />
        </branch>
        <instance x="4192" y="3424" name="XLXI_34" orien="R90" />
        <branch name="XLXN_24">
            <wire x2="4384" y1="3168" y2="3424" x1="4384" />
            <wire x2="5104" y1="3168" y2="3168" x1="4384" />
            <wire x2="5104" y1="3056" y2="3168" x1="5104" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="4320" y1="3232" y2="3424" x1="4320" />
            <wire x2="4896" y1="3232" y2="3232" x1="4320" />
            <wire x2="4896" y1="3056" y2="3232" x1="4896" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="4256" y1="3216" y2="3424" x1="4256" />
            <wire x2="4688" y1="3216" y2="3216" x1="4256" />
            <wire x2="4688" y1="3056" y2="3216" x1="4688" />
        </branch>
        <instance x="3296" y="3456" name="XLXI_35" orien="R90" />
        <branch name="XLXN_58">
            <wire x2="3552" y1="3264" y2="3456" x1="3552" />
            <wire x2="4432" y1="3264" y2="3264" x1="3552" />
            <wire x2="4432" y1="3088" y2="3264" x1="4432" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="3488" y1="3248" y2="3456" x1="3488" />
            <wire x2="4176" y1="3248" y2="3248" x1="3488" />
            <wire x2="4176" y1="3040" y2="3248" x1="4176" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="3424" y1="3232" y2="3456" x1="3424" />
            <wire x2="3888" y1="3232" y2="3232" x1="3424" />
            <wire x2="3888" y1="3040" y2="3232" x1="3888" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="3360" y1="3216" y2="3456" x1="3360" />
            <wire x2="3648" y1="3216" y2="3216" x1="3360" />
            <wire x2="3648" y1="3040" y2="3216" x1="3648" />
        </branch>
        <instance x="2352" y="3456" name="XLXI_36" orien="R90" />
        <branch name="XLXN_62">
            <wire x2="2128" y1="2976" y2="3216" x1="2128" />
            <wire x2="2544" y1="3216" y2="3216" x1="2128" />
            <wire x2="2544" y1="3216" y2="3456" x1="2544" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1936" y1="2976" y2="3232" x1="1936" />
            <wire x2="2480" y1="3232" y2="3232" x1="1936" />
            <wire x2="2480" y1="3232" y2="3456" x1="2480" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1728" y1="2960" y2="3456" x1="1728" />
            <wire x2="2416" y1="3456" y2="3456" x1="1728" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1408" y1="3008" y2="3232" x1="1408" />
            <wire x2="1680" y1="3232" y2="3232" x1="1408" />
            <wire x2="1680" y1="3232" y2="3456" x1="1680" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1216" y1="2992" y2="3248" x1="1216" />
            <wire x2="1616" y1="3248" y2="3248" x1="1216" />
            <wire x2="1616" y1="3248" y2="3456" x1="1616" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1024" y1="2992" y2="3264" x1="1024" />
            <wire x2="1552" y1="3264" y2="3264" x1="1024" />
            <wire x2="1552" y1="3264" y2="3456" x1="1552" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="816" y1="2992" y2="3456" x1="816" />
            <wire x2="1488" y1="3456" y2="3456" x1="816" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="608" y1="2992" y2="3232" x1="608" />
            <wire x2="784" y1="3232" y2="3232" x1="608" />
            <wire x2="784" y1="3232" y2="3472" x1="784" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="352" y1="2992" y2="3248" x1="352" />
            <wire x2="720" y1="3248" y2="3248" x1="352" />
            <wire x2="720" y1="3248" y2="3472" x1="720" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="144" y1="2992" y2="3472" x1="144" />
            <wire x2="656" y1="3472" y2="3472" x1="144" />
        </branch>
        <instance x="6528" y="1840" name="XLXI_45" orien="R90" />
        <branch name="point">
            <wire x2="6560" y1="1712" y2="1840" x1="6560" />
        </branch>
        <branch name="LE">
            <wire x2="800" y1="3856" y2="3856" x1="576" />
            <wire x2="800" y1="3856" y2="4208" x1="800" />
            <wire x2="1696" y1="3856" y2="3856" x1="800" />
            <wire x2="1696" y1="3856" y2="4240" x1="1696" />
            <wire x2="2576" y1="3856" y2="3856" x1="1696" />
            <wire x2="2576" y1="3856" y2="4176" x1="2576" />
            <wire x2="3504" y1="3856" y2="3856" x1="2576" />
            <wire x2="3504" y1="3856" y2="4128" x1="3504" />
            <wire x2="4400" y1="3856" y2="3856" x1="3504" />
            <wire x2="4400" y1="3856" y2="4112" x1="4400" />
            <wire x2="5200" y1="3856" y2="3856" x1="4400" />
            <wire x2="5200" y1="3856" y2="4160" x1="5200" />
            <wire x2="6096" y1="3856" y2="3856" x1="5200" />
            <wire x2="6816" y1="3856" y2="3856" x1="6096" />
            <wire x2="6096" y1="3856" y2="4128" x1="6096" />
            <wire x2="6096" y1="4128" y2="4144" x1="6096" />
            <wire x2="6816" y1="1712" y2="3856" x1="6816" />
        </branch>
        <branch name="P">
            <wire x2="6560" y1="2064" y2="4272" x1="6560" />
        </branch>
        <instance x="5968" y="4144" name="XLXI_46" orien="R90" />
        <instance x="5072" y="4160" name="XLXI_47" orien="R90" />
        <instance x="4272" y="4112" name="XLXI_48" orien="R90" />
        <instance x="3376" y="4128" name="XLXI_49" orien="R90" />
        <instance x="2448" y="4176" name="XLXI_50" orien="R90" />
        <instance x="1568" y="4240" name="XLXI_51" orien="R90" />
        <instance x="672" y="4208" name="XLXI_52" orien="R90" />
        <branch name="XLXN_76">
            <wire x2="720" y1="3728" y2="3968" x1="720" />
            <wire x2="736" y1="3968" y2="3968" x1="720" />
            <wire x2="736" y1="3968" y2="4208" x1="736" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1584" y1="3712" y2="3968" x1="1584" />
            <wire x2="1632" y1="3968" y2="3968" x1="1584" />
            <wire x2="1632" y1="3968" y2="4240" x1="1632" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="2480" y1="3712" y2="3936" x1="2480" />
            <wire x2="2512" y1="3936" y2="3936" x1="2480" />
            <wire x2="2512" y1="3936" y2="4176" x1="2512" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="3440" y1="3920" y2="4128" x1="3440" />
            <wire x2="3456" y1="3920" y2="3920" x1="3440" />
            <wire x2="3456" y1="3712" y2="3920" x1="3456" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="4320" y1="3680" y2="3888" x1="4320" />
            <wire x2="4336" y1="3888" y2="3888" x1="4320" />
            <wire x2="4336" y1="3888" y2="4112" x1="4336" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="5120" y1="3664" y2="3904" x1="5120" />
            <wire x2="5136" y1="3904" y2="3904" x1="5120" />
            <wire x2="5136" y1="3904" y2="4160" x1="5136" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="6000" y1="3616" y2="3872" x1="6000" />
            <wire x2="6032" y1="3872" y2="3872" x1="6000" />
            <wire x2="6032" y1="3872" y2="4144" x1="6032" />
        </branch>
        <branch name="a">
            <wire x2="6064" y1="4400" y2="4432" x1="6064" />
        </branch>
        <branch name="b">
            <wire x2="5168" y1="4416" y2="4448" x1="5168" />
        </branch>
        <branch name="c">
            <wire x2="4368" y1="4368" y2="4400" x1="4368" />
        </branch>
        <branch name="d">
            <wire x2="3472" y1="4384" y2="4416" x1="3472" />
        </branch>
        <branch name="e">
            <wire x2="2544" y1="4432" y2="4464" x1="2544" />
        </branch>
        <branch name="f">
            <wire x2="1664" y1="4496" y2="4528" x1="1664" />
        </branch>
        <branch name="g">
            <wire x2="768" y1="4464" y2="4496" x1="768" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1552" name="D3" orien="R270" />
        <iomarker fontsize="28" x="2960" y="1552" name="D2" orien="R270" />
        <iomarker fontsize="28" x="3168" y="1552" name="D1" orien="R270" />
        <iomarker fontsize="28" x="3360" y="1552" name="D0" orien="R270" />
        <iomarker fontsize="28" x="6560" y="4272" name="P" orien="R90" />
        <iomarker fontsize="28" x="6560" y="1712" name="point" orien="R270" />
        <iomarker fontsize="28" x="6816" y="1712" name="LE" orien="R270" />
        <iomarker fontsize="28" x="6064" y="4432" name="a" orien="R90" />
        <iomarker fontsize="28" x="5168" y="4448" name="b" orien="R90" />
        <iomarker fontsize="28" x="4368" y="4400" name="c" orien="R90" />
        <iomarker fontsize="28" x="3472" y="4416" name="d" orien="R90" />
        <iomarker fontsize="28" x="2544" y="4464" name="e" orien="R90" />
        <iomarker fontsize="28" x="1664" y="4528" name="f" orien="R90" />
        <iomarker fontsize="28" x="768" y="4496" name="g" orien="R90" />
    </sheet>
</drawing>