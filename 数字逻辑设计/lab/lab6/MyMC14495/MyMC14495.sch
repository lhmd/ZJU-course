<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="point" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="D3" />
        <signal name="XLXN_15" />
        <signal name="D2" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="D1" />
        <signal name="XLXN_20" />
        <signal name="D0" />
        <signal name="XLXN_22" />
        <signal name="ND3" />
        <signal name="XLXN_24" />
        <signal name="ND2" />
        <signal name="XLXN_26" />
        <signal name="ND1" />
        <signal name="XLXN_28" />
        <signal name="ND0" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_67" />
        <signal name="XLXN_69" />
        <signal name="XLXN_71" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_79" />
        <signal name="XLXN_41" />
        <signal name="XLXN_76" />
        <signal name="XLXN_35" />
        <signal name="XLXN_72" />
        <signal name="XLXN_43" />
        <signal name="XLXN_68" />
        <signal name="XLXN_46" />
        <signal name="XLXN_66" />
        <signal name="XLXN_48" />
        <signal name="XLXN_102" />
        <signal name="XLXN_106" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="ND3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="ND2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="ND1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="ND0" name="O" />
        </block>
        <block symbolname="and4" name="AD0">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="and4" name="AD1">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="and3" name="AD2">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="and3" name="AD3">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="and3" name="AD4">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="and3" name="AD5">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="and3" name="AD6">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="and3" name="AD7">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and2" name="AD8">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND3" name="I1" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and4" name="AD9">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and3" name="AD10">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and3" name="AD11">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and4" name="AD12">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and3" name="AD13">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and3" name="AD14">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and3" name="AD15">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and4" name="AD16">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and4" name="AD17">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and4" name="AD18">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and4" name="AD19">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and4" name="AD20">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND1" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_9">
            <blockpin signalname="XLXN_59" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_32" name="I2" />
            <blockpin signalname="XLXN_31" name="I3" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_31">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="XLXN_106" name="I1" />
            <blockpin signalname="XLXN_102" name="I2" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_33">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="XLXN_75" name="I1" />
            <blockpin signalname="XLXN_74" name="I2" />
            <blockpin signalname="XLXN_58" name="I3" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_34">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_35" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_35">
            <blockpin signalname="XLXN_72" name="I0" />
            <blockpin signalname="XLXN_71" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_36">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_37">
            <blockpin signalname="XLXN_68" name="I0" />
            <blockpin signalname="XLXN_67" name="I1" />
            <blockpin signalname="XLXN_32" name="I2" />
            <blockpin signalname="XLXN_31" name="I3" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_38">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_39">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_65" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_41">
            <blockpin signalname="XLXN_64" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_61" name="I2" />
            <blockpin signalname="XLXN_60" name="I3" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="point">
            <wire x2="1136" y1="1136" y2="1952" x1="1136" />
        </branch>
        <instance x="1104" y="1952" name="XLXI_1" orien="R90" />
        <branch name="p">
            <wire x2="1136" y1="2176" y2="3904" x1="1136" />
        </branch>
        <branch name="LE">
            <wire x2="880" y1="1088" y2="3600" x1="880" />
            <wire x2="1504" y1="3600" y2="3600" x1="880" />
            <wire x2="1504" y1="3600" y2="3728" x1="1504" />
            <wire x2="2112" y1="3600" y2="3600" x1="1504" />
            <wire x2="2112" y1="3600" y2="3760" x1="2112" />
            <wire x2="2624" y1="3600" y2="3600" x1="2112" />
            <wire x2="2624" y1="3600" y2="3744" x1="2624" />
            <wire x2="3216" y1="3600" y2="3600" x1="2624" />
            <wire x2="3216" y1="3600" y2="3760" x1="3216" />
            <wire x2="3584" y1="3600" y2="3600" x1="3216" />
            <wire x2="4176" y1="3600" y2="3600" x1="3584" />
            <wire x2="4176" y1="3600" y2="3744" x1="4176" />
            <wire x2="5216" y1="3600" y2="3600" x1="4176" />
            <wire x2="5216" y1="3600" y2="3712" x1="5216" />
            <wire x2="3584" y1="3600" y2="3744" x1="3584" />
        </branch>
        <instance x="4112" y="3744" name="XLXI_3" orien="R90" />
        <branch name="a">
            <wire x2="5248" y1="3968" y2="4032" x1="5248" />
        </branch>
        <branch name="b">
            <wire x2="4208" y1="4000" y2="4032" x1="4208" />
        </branch>
        <branch name="c">
            <wire x2="3616" y1="4000" y2="4032" x1="3616" />
        </branch>
        <branch name="d">
            <wire x2="3248" y1="4016" y2="4032" x1="3248" />
        </branch>
        <branch name="e">
            <wire x2="2656" y1="4000" y2="4032" x1="2656" />
        </branch>
        <branch name="f">
            <wire x2="2144" y1="4016" y2="4048" x1="2144" />
        </branch>
        <branch name="g">
            <wire x2="1536" y1="3984" y2="4016" x1="1536" />
        </branch>
        <instance x="5152" y="3712" name="XLXI_2" orien="R90" />
        <branch name="XLXN_12">
            <wire x2="5280" y1="3360" y2="3712" x1="5280" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5616" y="1357" type="branch" />
            <wire x2="1424" y1="1600" y2="1888" x1="1424" />
            <wire x2="3136" y1="1600" y2="1600" x1="1424" />
            <wire x2="3504" y1="1600" y2="1600" x1="3136" />
            <wire x2="3920" y1="1600" y2="1600" x1="3504" />
            <wire x2="4128" y1="1600" y2="1600" x1="3920" />
            <wire x2="4848" y1="1600" y2="1600" x1="4128" />
            <wire x2="5120" y1="1600" y2="1600" x1="4848" />
            <wire x2="5616" y1="1600" y2="1600" x1="5120" />
            <wire x2="5120" y1="1600" y2="1888" x1="5120" />
            <wire x2="4848" y1="1600" y2="1888" x1="4848" />
            <wire x2="4128" y1="1600" y2="1888" x1="4128" />
            <wire x2="3920" y1="1600" y2="1888" x1="3920" />
            <wire x2="3504" y1="1600" y2="1888" x1="3504" />
            <wire x2="3136" y1="1600" y2="1888" x1="3136" />
            <wire x2="5728" y1="1088" y2="1088" x1="5616" />
            <wire x2="5616" y1="1088" y2="1357" x1="5616" />
            <wire x2="5616" y1="1357" y2="1360" x1="5616" />
            <wire x2="5616" y1="1360" y2="1600" x1="5616" />
            <wire x2="5728" y1="896" y2="1088" x1="5728" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5392" y="1262" type="branch" />
            <wire x2="1360" y1="1504" y2="1888" x1="1360" />
            <wire x2="1600" y1="1504" y2="1504" x1="1360" />
            <wire x2="1600" y1="1504" y2="1888" x1="1600" />
            <wire x2="2688" y1="1504" y2="1504" x1="1600" />
            <wire x2="2688" y1="1504" y2="1888" x1="2688" />
            <wire x2="3312" y1="1504" y2="1504" x1="2688" />
            <wire x2="3312" y1="1504" y2="1888" x1="3312" />
            <wire x2="3440" y1="1504" y2="1504" x1="3312" />
            <wire x2="3440" y1="1504" y2="1888" x1="3440" />
            <wire x2="4064" y1="1504" y2="1504" x1="3440" />
            <wire x2="4064" y1="1504" y2="1888" x1="4064" />
            <wire x2="4320" y1="1504" y2="1504" x1="4064" />
            <wire x2="4320" y1="1504" y2="1888" x1="4320" />
            <wire x2="4512" y1="1504" y2="1504" x1="4320" />
            <wire x2="4512" y1="1504" y2="1888" x1="4512" />
            <wire x2="5056" y1="1504" y2="1504" x1="4512" />
            <wire x2="5296" y1="1504" y2="1504" x1="5056" />
            <wire x2="5296" y1="1504" y2="1888" x1="5296" />
            <wire x2="5392" y1="1504" y2="1504" x1="5296" />
            <wire x2="5056" y1="1504" y2="1888" x1="5056" />
            <wire x2="5472" y1="1072" y2="1072" x1="5392" />
            <wire x2="5472" y1="1072" y2="1088" x1="5472" />
            <wire x2="5392" y1="1072" y2="1262" x1="5392" />
            <wire x2="5392" y1="1262" y2="1264" x1="5392" />
            <wire x2="5392" y1="1264" y2="1504" x1="5392" />
            <wire x2="5472" y1="896" y2="1072" x1="5472" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5152" y="1316" type="branch" />
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5264" y="988" type="branch" />
            <wire x2="1536" y1="1440" y2="1888" x1="1536" />
            <wire x2="1968" y1="1440" y2="1440" x1="1536" />
            <wire x2="2080" y1="1440" y2="1440" x1="1968" />
            <wire x2="3008" y1="1440" y2="1440" x1="2080" />
            <wire x2="3248" y1="1440" y2="1440" x1="3008" />
            <wire x2="3376" y1="1440" y2="1440" x1="3248" />
            <wire x2="3616" y1="1440" y2="1440" x1="3376" />
            <wire x2="3856" y1="1440" y2="1440" x1="3616" />
            <wire x2="4256" y1="1440" y2="1440" x1="3856" />
            <wire x2="4720" y1="1440" y2="1440" x1="4256" />
            <wire x2="5152" y1="1440" y2="1440" x1="4720" />
            <wire x2="4720" y1="1440" y2="1888" x1="4720" />
            <wire x2="4256" y1="1440" y2="1888" x1="4256" />
            <wire x2="3856" y1="1440" y2="1888" x1="3856" />
            <wire x2="3616" y1="1440" y2="1888" x1="3616" />
            <wire x2="3376" y1="1440" y2="1888" x1="3376" />
            <wire x2="3248" y1="1440" y2="1888" x1="3248" />
            <wire x2="3008" y1="1440" y2="1888" x1="3008" />
            <wire x2="2080" y1="1440" y2="1888" x1="2080" />
            <wire x2="1968" y1="1440" y2="1888" x1="1968" />
            <wire x2="5264" y1="1088" y2="1088" x1="5152" />
            <wire x2="5152" y1="1088" y2="1312" x1="5152" />
            <wire x2="5152" y1="1312" y2="1316" x1="5152" />
            <wire x2="5152" y1="1316" y2="1440" x1="5152" />
            <wire x2="5264" y1="896" y2="988" x1="5264" />
            <wire x2="5264" y1="988" y2="992" x1="5264" />
            <wire x2="5264" y1="992" y2="1088" x1="5264" />
        </branch>
        <branch name="D0">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4928" y="1250" type="branch" />
            <wire x2="1472" y1="1648" y2="1888" x1="1472" />
            <wire x2="1888" y1="1648" y2="1648" x1="1472" />
            <wire x2="1888" y1="1648" y2="1728" x1="1888" />
            <wire x2="1904" y1="1728" y2="1728" x1="1888" />
            <wire x2="1904" y1="1728" y2="1888" x1="1904" />
            <wire x2="2256" y1="1648" y2="1648" x1="1888" />
            <wire x2="2256" y1="1648" y2="1888" x1="2256" />
            <wire x2="2448" y1="1648" y2="1648" x1="2256" />
            <wire x2="2448" y1="1648" y2="1888" x1="2448" />
            <wire x2="2816" y1="1648" y2="1648" x1="2448" />
            <wire x2="2816" y1="1648" y2="1888" x1="2816" />
            <wire x2="3184" y1="1648" y2="1648" x1="2816" />
            <wire x2="3184" y1="1648" y2="1888" x1="3184" />
            <wire x2="3792" y1="1648" y2="1648" x1="3184" />
            <wire x2="3792" y1="1648" y2="1888" x1="3792" />
            <wire x2="4384" y1="1648" y2="1648" x1="3792" />
            <wire x2="4384" y1="1648" y2="1888" x1="4384" />
            <wire x2="4656" y1="1648" y2="1648" x1="4384" />
            <wire x2="4928" y1="1648" y2="1648" x1="4656" />
            <wire x2="4928" y1="1648" y2="1888" x1="4928" />
            <wire x2="5424" y1="1648" y2="1648" x1="4928" />
            <wire x2="5424" y1="1648" y2="1888" x1="5424" />
            <wire x2="4656" y1="1648" y2="1888" x1="4656" />
            <wire x2="4928" y1="1024" y2="1248" x1="4928" />
            <wire x2="4928" y1="1248" y2="1250" x1="4928" />
            <wire x2="4928" y1="1250" y2="1648" x1="4928" />
            <wire x2="5056" y1="1024" y2="1024" x1="4928" />
            <wire x2="5056" y1="1024" y2="1088" x1="5056" />
            <wire x2="5056" y1="896" y2="1024" x1="5056" />
        </branch>
        <instance x="5696" y="1088" name="XLXI_5" orien="R90" />
        <instance x="5440" y="1088" name="XLXI_6" orien="R90" />
        <instance x="5232" y="1088" name="XLXI_7" orien="R90" />
        <instance x="5024" y="1088" name="XLXI_8" orien="R90" />
        <instance x="1168" y="1888" name="AD0" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="1408" y="1888" name="AD1" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="1648" y="1888" name="AD2" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="1840" y="1888" name="AD3" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2016" y="1888" name="AD4" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2192" y="1888" name="AD5" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2384" y="1888" name="AD6" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2560" y="1888" name="AD7" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2752" y="1888" name="AD8" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2880" y="1888" name="AD9" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3120" y="1888" name="AD10" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3312" y="1888" name="AD11" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3488" y="1888" name="AD12" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3728" y="1888" name="AD13" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3936" y="1888" name="AD14" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="4128" y="1888" name="AD15" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="4320" y="1888" name="AD16" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="4592" y="1888" name="AD17" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="4864" y="1888" name="AD18" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="5104" y="1888" name="AD19" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <branch name="ND3">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5728" y="1627" type="branch" />
            <wire x2="1664" y1="1744" y2="1888" x1="1664" />
            <wire x2="1840" y1="1744" y2="1744" x1="1664" />
            <wire x2="1840" y1="1744" y2="1888" x1="1840" />
            <wire x2="2032" y1="1744" y2="1744" x1="1840" />
            <wire x2="2032" y1="1744" y2="1888" x1="2032" />
            <wire x2="2208" y1="1744" y2="1744" x1="2032" />
            <wire x2="2208" y1="1744" y2="1888" x1="2208" />
            <wire x2="2384" y1="1744" y2="1744" x1="2208" />
            <wire x2="2384" y1="1744" y2="1888" x1="2384" />
            <wire x2="2752" y1="1744" y2="1744" x1="2384" />
            <wire x2="2752" y1="1744" y2="1888" x1="2752" />
            <wire x2="2880" y1="1744" y2="1744" x1="2752" />
            <wire x2="2880" y1="1744" y2="1888" x1="2880" />
            <wire x2="3744" y1="1744" y2="1744" x1="2880" />
            <wire x2="3744" y1="1744" y2="1888" x1="3744" />
            <wire x2="4576" y1="1744" y2="1744" x1="3744" />
            <wire x2="4576" y1="1744" y2="1888" x1="4576" />
            <wire x2="5360" y1="1744" y2="1744" x1="4576" />
            <wire x2="5728" y1="1744" y2="1744" x1="5360" />
            <wire x2="5728" y1="1744" y2="1888" x1="5728" />
            <wire x2="5360" y1="1744" y2="1888" x1="5360" />
            <wire x2="5728" y1="1888" y2="1888" x1="5616" />
            <wire x2="5728" y1="1312" y2="1627" x1="5728" />
            <wire x2="5728" y1="1627" y2="1632" x1="5728" />
            <wire x2="5728" y1="1632" y2="1744" x1="5728" />
        </branch>
        <branch name="ND2">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5472" y="1451" type="branch" />
            <wire x2="1776" y1="1680" y2="1888" x1="1776" />
            <wire x2="2144" y1="1680" y2="1680" x1="1776" />
            <wire x2="2144" y1="1680" y2="1888" x1="2144" />
            <wire x2="2320" y1="1680" y2="1680" x1="2144" />
            <wire x2="2320" y1="1680" y2="1888" x1="2320" />
            <wire x2="2576" y1="1680" y2="1680" x1="2320" />
            <wire x2="3072" y1="1680" y2="1680" x1="2576" />
            <wire x2="3072" y1="1680" y2="1888" x1="3072" />
            <wire x2="3680" y1="1680" y2="1680" x1="3072" />
            <wire x2="3680" y1="1680" y2="1888" x1="3680" />
            <wire x2="4784" y1="1680" y2="1680" x1="3680" />
            <wire x2="4784" y1="1680" y2="1888" x1="4784" />
            <wire x2="5472" y1="1680" y2="1680" x1="4784" />
            <wire x2="5488" y1="1680" y2="1680" x1="5472" />
            <wire x2="5488" y1="1680" y2="1888" x1="5488" />
            <wire x2="2576" y1="1680" y2="1888" x1="2576" />
            <wire x2="5472" y1="1312" y2="1451" x1="5472" />
            <wire x2="5472" y1="1451" y2="1456" x1="5472" />
            <wire x2="5472" y1="1456" y2="1680" x1="5472" />
        </branch>
        <branch name="ND1">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5264" y="1451" type="branch" />
            <wire x2="1296" y1="1568" y2="1888" x1="1296" />
            <wire x2="1712" y1="1568" y2="1568" x1="1296" />
            <wire x2="1712" y1="1568" y2="1888" x1="1712" />
            <wire x2="2512" y1="1568" y2="1568" x1="1712" />
            <wire x2="2512" y1="1568" y2="1888" x1="2512" />
            <wire x2="2624" y1="1568" y2="1568" x1="2512" />
            <wire x2="2624" y1="1568" y2="1888" x1="2624" />
            <wire x2="4448" y1="1568" y2="1568" x1="2624" />
            <wire x2="4448" y1="1568" y2="1888" x1="4448" />
            <wire x2="4992" y1="1568" y2="1568" x1="4448" />
            <wire x2="4992" y1="1568" y2="1888" x1="4992" />
            <wire x2="5232" y1="1568" y2="1568" x1="4992" />
            <wire x2="5264" y1="1568" y2="1568" x1="5232" />
            <wire x2="5552" y1="1568" y2="1568" x1="5264" />
            <wire x2="5552" y1="1568" y2="1888" x1="5552" />
            <wire x2="5232" y1="1568" y2="1888" x1="5232" />
            <wire x2="5264" y1="1312" y2="1451" x1="5264" />
            <wire x2="5264" y1="1451" y2="1456" x1="5264" />
            <wire x2="5264" y1="1456" y2="1568" x1="5264" />
        </branch>
        <branch name="ND0">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5024" y="1341" type="branch" />
            <wire x2="1232" y1="1808" y2="1888" x1="1232" />
            <wire x2="2944" y1="1808" y2="1808" x1="1232" />
            <wire x2="2944" y1="1808" y2="1888" x1="2944" />
            <wire x2="3552" y1="1808" y2="1808" x1="2944" />
            <wire x2="3552" y1="1808" y2="1888" x1="3552" />
            <wire x2="4000" y1="1808" y2="1808" x1="3552" />
            <wire x2="4000" y1="1808" y2="1888" x1="4000" />
            <wire x2="4192" y1="1808" y2="1808" x1="4000" />
            <wire x2="5024" y1="1808" y2="1808" x1="4192" />
            <wire x2="5168" y1="1808" y2="1808" x1="5024" />
            <wire x2="5168" y1="1808" y2="1888" x1="5168" />
            <wire x2="4192" y1="1808" y2="1888" x1="4192" />
            <wire x2="5056" y1="1312" y2="1312" x1="5024" />
            <wire x2="5024" y1="1312" y2="1341" x1="5024" />
            <wire x2="5024" y1="1341" y2="1344" x1="5024" />
            <wire x2="5024" y1="1344" y2="1808" x1="5024" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="4224" y1="3360" y2="3728" x1="4224" />
            <wire x2="4240" y1="3728" y2="3728" x1="4224" />
            <wire x2="4240" y1="3728" y2="3744" x1="4240" />
        </branch>
        <instance x="5360" y="1888" name="AD20" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="5120" y="3104" name="XLXI_9" orien="R90" />
        <branch name="XLXN_31">
            <wire x2="5520" y1="2992" y2="2992" x1="3376" />
            <wire x2="5520" y1="2992" y2="3104" x1="5520" />
            <wire x2="3376" y1="2992" y2="3088" x1="3376" />
            <wire x2="5520" y1="3104" y2="3104" x1="5376" />
            <wire x2="5520" y1="2144" y2="2992" x1="5520" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="3312" y1="2816" y2="3088" x1="3312" />
            <wire x2="5264" y1="2816" y2="2816" x1="3312" />
            <wire x2="5312" y1="2816" y2="2816" x1="5264" />
            <wire x2="5312" y1="2816" y2="3104" x1="5312" />
            <wire x2="5264" y1="2144" y2="2816" x1="5264" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="2272" y1="2896" y2="3040" x1="2272" />
            <wire x2="5024" y1="2896" y2="2896" x1="2272" />
            <wire x2="5248" y1="2896" y2="2896" x1="5024" />
            <wire x2="5248" y1="2896" y2="3104" x1="5248" />
            <wire x2="5024" y1="2144" y2="2896" x1="5024" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="4752" y1="2144" y2="3104" x1="4752" />
            <wire x2="5184" y1="3104" y2="3104" x1="4752" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="4480" y1="3104" y2="3104" x1="4320" />
            <wire x2="4480" y1="2144" y2="3104" x1="4480" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="4256" y1="2144" y2="3104" x1="4256" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="3712" y1="2752" y2="3072" x1="3712" />
            <wire x2="4064" y1="2752" y2="2752" x1="3712" />
            <wire x2="4192" y1="2752" y2="2752" x1="4064" />
            <wire x2="4192" y1="2752" y2="3104" x1="4192" />
            <wire x2="4064" y1="2144" y2="2752" x1="4064" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="3856" y1="2144" y2="3104" x1="3856" />
            <wire x2="4128" y1="3104" y2="3104" x1="3856" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="3648" y1="2144" y2="3072" x1="3648" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="3248" y1="2144" y2="3088" x1="3248" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2848" y1="3040" y2="3040" x1="2752" />
            <wire x2="2848" y1="2144" y2="3040" x1="2848" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2688" y1="2144" y2="3040" x1="2688" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="2320" y1="2160" y2="2160" x1="2208" />
            <wire x2="2208" y1="2160" y2="3040" x1="2208" />
            <wire x2="2320" y1="2144" y2="2160" x1="2320" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="2144" y1="2144" y2="3040" x1="2144" />
        </branch>
        <instance x="1440" y="3024" name="XLXI_31" orien="R90" />
        <branch name="XLXN_79">
            <wire x2="1328" y1="2144" y2="2160" x1="1328" />
            <wire x2="1504" y1="2160" y2="2160" x1="1328" />
            <wire x2="1504" y1="2160" y2="3024" x1="1504" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1568" y1="3280" y2="3728" x1="1568" />
        </branch>
        <instance x="1440" y="3728" name="XLXI_32" orien="R90" />
        <instance x="2016" y="3040" name="XLXI_33" orien="R90" />
        <branch name="XLXN_76">
            <wire x2="1968" y1="2144" y2="2160" x1="1968" />
            <wire x2="2080" y1="2160" y2="2160" x1="1968" />
            <wire x2="2080" y1="2160" y2="3040" x1="2080" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2176" y1="3296" y2="3760" x1="2176" />
        </branch>
        <instance x="2048" y="3760" name="XLXI_34" orien="R90" />
        <instance x="2560" y="3040" name="XLXI_35" orien="R90" />
        <branch name="XLXN_72">
            <wire x2="2512" y1="2144" y2="2160" x1="2512" />
            <wire x2="2624" y1="2160" y2="2160" x1="2512" />
            <wire x2="2624" y1="2160" y2="3040" x1="2624" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2688" y1="3296" y2="3744" x1="2688" />
        </branch>
        <instance x="2560" y="3744" name="XLXI_36" orien="R90" />
        <instance x="3120" y="3088" name="XLXI_37" orien="R90" />
        <branch name="XLXN_68">
            <wire x2="3040" y1="2144" y2="2160" x1="3040" />
            <wire x2="3184" y1="2160" y2="2160" x1="3040" />
            <wire x2="3184" y1="2160" y2="3088" x1="3184" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="3280" y1="3344" y2="3760" x1="3280" />
        </branch>
        <instance x="3152" y="3760" name="XLXI_38" orien="R90" />
        <instance x="3520" y="3072" name="XLXI_39" orien="R90" />
        <branch name="XLXN_66">
            <wire x2="3440" y1="2144" y2="2160" x1="3440" />
            <wire x2="3584" y1="2160" y2="2160" x1="3440" />
            <wire x2="3584" y1="2160" y2="3072" x1="3584" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="3648" y1="3328" y2="3744" x1="3648" />
        </branch>
        <instance x="3520" y="3744" name="XLXI_4" orien="R90" />
        <instance x="4064" y="3104" name="XLXI_41" orien="R90" />
        <branch name="XLXN_102">
            <wire x2="1776" y1="3024" y2="3024" x1="1632" />
            <wire x2="1776" y1="2144" y2="3024" x1="1776" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="1568" y1="2144" y2="3024" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1136" name="point" orien="R270" />
        <iomarker fontsize="28" x="1136" y="3904" name="p" orien="R90" />
        <iomarker fontsize="28" x="880" y="1088" name="LE" orien="R270" />
        <iomarker fontsize="28" x="4208" y="4032" name="b" orien="R90" />
        <iomarker fontsize="28" x="5248" y="4032" name="a" orien="R90" />
        <iomarker fontsize="28" x="5728" y="896" name="D3" orien="R270" />
        <iomarker fontsize="28" x="5472" y="896" name="D2" orien="R270" />
        <iomarker fontsize="28" x="5264" y="896" name="D1" orien="R270" />
        <iomarker fontsize="28" x="5056" y="896" name="D0" orien="R270" />
        <iomarker fontsize="28" x="1536" y="4016" name="g" orien="R90" />
        <iomarker fontsize="28" x="2144" y="4048" name="f" orien="R90" />
        <iomarker fontsize="28" x="2656" y="4032" name="e" orien="R90" />
        <iomarker fontsize="28" x="3248" y="4032" name="d" orien="R90" />
        <iomarker fontsize="28" x="3616" y="4032" name="c" orien="R90" />
    </sheet>
</drawing>