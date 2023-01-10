<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_50" />
        <signal name="D2" />
        <signal name="XLXN_52" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="D3" />
        <signal name="XLXN_100" />
        <signal name="D1" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="XLXN_128" />
        <signal name="D0" />
        <signal name="XLXN_130" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="LE" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="Point" />
        <signal name="p" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="Point" />
        <port polarity="Output" name="p" />
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
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_123" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_58">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_60">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_61">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_62">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_63">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_64">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_65">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="XLXN_60" name="I1" />
            <blockpin signalname="XLXN_59" name="I2" />
            <blockpin signalname="XLXN_58" name="I3" />
            <blockpin signalname="XLXN_142" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_66">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_67">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_68">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_69">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_70">
            <blockpin signalname="XLXN_98" name="I0" />
            <blockpin signalname="XLXN_97" name="I1" />
            <blockpin signalname="XLXN_96" name="I2" />
            <blockpin signalname="XLXN_95" name="I3" />
            <blockpin signalname="XLXN_141" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_71">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_104" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_72">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_73">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_74">
            <blockpin signalname="XLXN_106" name="I0" />
            <blockpin signalname="XLXN_105" name="I1" />
            <blockpin signalname="XLXN_104" name="I2" />
            <blockpin signalname="XLXN_140" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_76">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_113" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_77">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_114" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_79">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="XLXN_114" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_112" name="I3" />
            <blockpin signalname="XLXN_139" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_75">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_112" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_82">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_118" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_83">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_123" name="I1" />
            <blockpin signalname="XLXN_119" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_84">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_123" name="I2" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_85">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_122" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_86">
            <blockpin signalname="XLXN_122" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_119" name="I2" />
            <blockpin signalname="XLXN_138" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_88">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_123" name="I2" />
            <blockpin signalname="XLXN_125" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_89">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_123" name="I2" />
            <blockpin signalname="XLXN_126" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_90">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_123" name="I2" />
            <blockpin signalname="XLXN_127" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_91">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_128" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_92">
            <blockpin signalname="XLXN_128" name="I0" />
            <blockpin signalname="XLXN_127" name="I1" />
            <blockpin signalname="XLXN_126" name="I2" />
            <blockpin signalname="XLXN_125" name="I3" />
            <blockpin signalname="XLXN_137" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_93">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_123" name="I2" />
            <blockpin signalname="XLXN_130" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_94">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_123" name="I3" />
            <blockpin signalname="XLXN_132" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_95">
            <blockpin signalname="XLXN_117" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_133" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_96">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="XLXN_132" name="I1" />
            <blockpin signalname="XLXN_130" name="I2" />
            <blockpin signalname="XLXN_136" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_97">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_142" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_98">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_141" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_99">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_140" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_100">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_139" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_101">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_138" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_102">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_137" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_103">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_136" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_105">
            <blockpin signalname="Point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="7040">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <instance x="720" y="480" name="XLXI_57" orien="R0" />
        <instance x="720" y="720" name="XLXI_58" orien="R0" />
        <instance x="704" y="1200" name="XLXI_60" orien="R0" />
        <instance x="720" y="976" name="XLXI_59" orien="R0" />
        <instance x="1952" y="736" name="XLXI_62" orien="R0" />
        <branch name="D2">
            <wire x2="704" y1="688" y2="688" x1="512" />
            <wire x2="720" y1="688" y2="688" x1="704" />
            <wire x2="704" y1="688" y2="768" x1="704" />
            <wire x2="1728" y1="768" y2="768" x1="704" />
            <wire x2="1728" y1="768" y2="1104" x1="1728" />
            <wire x2="1968" y1="1104" y2="1104" x1="1728" />
            <wire x2="1728" y1="1104" y2="1504" x1="1728" />
            <wire x2="1728" y1="1504" y2="1728" x1="1728" />
            <wire x2="1984" y1="1728" y2="1728" x1="1728" />
            <wire x2="1728" y1="1728" y2="2032" x1="1728" />
            <wire x2="1984" y1="2032" y2="2032" x1="1728" />
            <wire x2="1728" y1="2032" y2="2864" x1="1728" />
            <wire x2="1984" y1="2864" y2="2864" x1="1728" />
            <wire x2="1728" y1="2864" y2="3072" x1="1728" />
            <wire x2="1984" y1="3072" y2="3072" x1="1728" />
            <wire x2="1728" y1="3072" y2="3616" x1="1728" />
            <wire x2="2000" y1="3616" y2="3616" x1="1728" />
            <wire x2="1728" y1="3616" y2="3840" x1="1728" />
            <wire x2="2000" y1="3840" y2="3840" x1="1728" />
            <wire x2="1728" y1="3840" y2="4144" x1="1728" />
            <wire x2="2000" y1="4144" y2="4144" x1="1728" />
            <wire x2="1728" y1="4144" y2="4992" x1="1728" />
            <wire x2="1728" y1="4992" y2="5008" x1="1728" />
            <wire x2="1728" y1="5008" y2="6096" x1="1728" />
            <wire x2="2096" y1="6096" y2="6096" x1="1728" />
            <wire x2="1728" y1="6096" y2="6640" x1="1728" />
            <wire x2="1728" y1="6640" y2="6656" x1="1728" />
            <wire x2="1728" y1="6656" y2="6880" x1="1728" />
            <wire x2="1728" y1="6880" y2="6896" x1="1728" />
            <wire x2="2112" y1="6880" y2="6880" x1="1728" />
            <wire x2="2096" y1="6640" y2="6640" x1="1728" />
            <wire x2="2080" y1="4992" y2="4992" x1="1728" />
            <wire x2="1984" y1="1504" y2="1504" x1="1728" />
            <wire x2="1728" y1="544" y2="768" x1="1728" />
            <wire x2="1952" y1="544" y2="544" x1="1728" />
        </branch>
        <instance x="2816" y="800" name="XLXI_65" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="2816" y1="320" y2="320" x1="2208" />
            <wire x2="2816" y1="320" y2="544" x1="2816" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="2512" y1="576" y2="576" x1="2208" />
            <wire x2="2512" y1="576" y2="608" x1="2512" />
            <wire x2="2816" y1="608" y2="608" x1="2512" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="2800" y1="880" y2="880" x1="2208" />
            <wire x2="2816" y1="672" y2="672" x1="2800" />
            <wire x2="2800" y1="672" y2="880" x1="2800" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2816" y1="1136" y2="1136" x1="2224" />
            <wire x2="2816" y1="736" y2="1136" x1="2816" />
        </branch>
        <instance x="1952" y="480" name="XLXI_61" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="1824" y1="688" y2="688" x1="944" />
            <wire x2="1824" y1="688" y2="848" x1="1824" />
            <wire x2="1952" y1="848" y2="848" x1="1824" />
            <wire x2="1824" y1="848" y2="2592" x1="1824" />
            <wire x2="1984" y1="2592" y2="2592" x1="1824" />
            <wire x2="1824" y1="2592" y2="3360" x1="1824" />
            <wire x2="1824" y1="3360" y2="3376" x1="1824" />
            <wire x2="1840" y1="3360" y2="3360" x1="1824" />
            <wire x2="1984" y1="3360" y2="3360" x1="1840" />
            <wire x2="1840" y1="3360" y2="3440" x1="1840" />
            <wire x2="1952" y1="288" y2="288" x1="1824" />
            <wire x2="1824" y1="288" y2="688" x1="1824" />
            <wire x2="1840" y1="3440" y2="3440" x1="1824" />
            <wire x2="1824" y1="3440" y2="4432" x1="1824" />
            <wire x2="1824" y1="4432" y2="4448" x1="1824" />
            <wire x2="1824" y1="4448" y2="5136" x1="1824" />
            <wire x2="2080" y1="5136" y2="5136" x1="1824" />
            <wire x2="1824" y1="5136" y2="5456" x1="1824" />
            <wire x2="2096" y1="5456" y2="5456" x1="1824" />
            <wire x2="1824" y1="5456" y2="5696" x1="1824" />
            <wire x2="2096" y1="5696" y2="5696" x1="1824" />
            <wire x2="1824" y1="5696" y2="6432" x1="1824" />
            <wire x2="2096" y1="6432" y2="6432" x1="1824" />
            <wire x2="2064" y1="4432" y2="4432" x1="1824" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1792" y1="944" y2="944" x1="944" />
            <wire x2="1792" y1="944" y2="1168" x1="1792" />
            <wire x2="1968" y1="1168" y2="1168" x1="1792" />
            <wire x2="1792" y1="1168" y2="1568" x1="1792" />
            <wire x2="1792" y1="1568" y2="3424" x1="1792" />
            <wire x2="1984" y1="3424" y2="3424" x1="1792" />
            <wire x2="1792" y1="3424" y2="3680" x1="1792" />
            <wire x2="2000" y1="3680" y2="3680" x1="1792" />
            <wire x2="1792" y1="3680" y2="5056" x1="1792" />
            <wire x2="2080" y1="5056" y2="5056" x1="1792" />
            <wire x2="1792" y1="5056" y2="5200" x1="1792" />
            <wire x2="2080" y1="5200" y2="5200" x1="1792" />
            <wire x2="1792" y1="5200" y2="6160" x1="1792" />
            <wire x2="2096" y1="6160" y2="6160" x1="1792" />
            <wire x2="1792" y1="6160" y2="6496" x1="1792" />
            <wire x2="2096" y1="6496" y2="6496" x1="1792" />
            <wire x2="1792" y1="6496" y2="6944" x1="1792" />
            <wire x2="1792" y1="6944" y2="6960" x1="1792" />
            <wire x2="2112" y1="6944" y2="6944" x1="1792" />
            <wire x2="1984" y1="1568" y2="1568" x1="1792" />
            <wire x2="1952" y1="352" y2="352" x1="1792" />
            <wire x2="1792" y1="352" y2="608" x1="1792" />
            <wire x2="1792" y1="608" y2="944" x1="1792" />
            <wire x2="1952" y1="608" y2="608" x1="1792" />
        </branch>
        <instance x="1952" y="1040" name="XLXI_63" orien="R0" />
        <instance x="1968" y="1296" name="XLXI_64" orien="R0" />
        <instance x="1984" y="1920" name="XLXI_67" orien="R0" />
        <instance x="1984" y="2160" name="XLXI_68" orien="R0" />
        <instance x="1984" y="2416" name="XLXI_69" orien="R0" />
        <instance x="2864" y="2016" name="XLXI_70" orien="R0" />
        <branch name="XLXN_95">
            <wire x2="2864" y1="1536" y2="1536" x1="2240" />
            <wire x2="2864" y1="1536" y2="1744" x1="2864" />
            <wire x2="2864" y1="1744" y2="1760" x1="2864" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="2544" y1="1792" y2="1792" x1="2240" />
            <wire x2="2544" y1="1792" y2="1824" x1="2544" />
            <wire x2="2864" y1="1824" y2="1824" x1="2544" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="2544" y1="2032" y2="2032" x1="2240" />
            <wire x2="2544" y1="1888" y2="2032" x1="2544" />
            <wire x2="2864" y1="1888" y2="1888" x1="2544" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2864" y1="2288" y2="2288" x1="2240" />
            <wire x2="2864" y1="1952" y2="2288" x1="2864" />
        </branch>
        <instance x="1984" y="2784" name="XLXI_71" orien="R0" />
        <instance x="1984" y="2992" name="XLXI_72" orien="R0" />
        <branch name="D3">
            <wire x2="704" y1="448" y2="448" x1="528" />
            <wire x2="720" y1="448" y2="448" x1="704" />
            <wire x2="704" y1="448" y2="528" x1="704" />
            <wire x2="1648" y1="528" y2="528" x1="704" />
            <wire x2="1648" y1="528" y2="784" x1="1648" />
            <wire x2="1952" y1="784" y2="784" x1="1648" />
            <wire x2="1648" y1="784" y2="1040" x1="1648" />
            <wire x2="1968" y1="1040" y2="1040" x1="1648" />
            <wire x2="1648" y1="1040" y2="1968" x1="1648" />
            <wire x2="1984" y1="1968" y2="1968" x1="1648" />
            <wire x2="1648" y1="1968" y2="2224" x1="1648" />
            <wire x2="1984" y1="2224" y2="2224" x1="1648" />
            <wire x2="1648" y1="2224" y2="2784" x1="1648" />
            <wire x2="1984" y1="2784" y2="2784" x1="1648" />
            <wire x2="1984" y1="2784" y2="2800" x1="1984" />
            <wire x2="1648" y1="2784" y2="3008" x1="1648" />
            <wire x2="1984" y1="3008" y2="3008" x1="1648" />
            <wire x2="1648" y1="3008" y2="4368" x1="1648" />
            <wire x2="2064" y1="4368" y2="4368" x1="1648" />
            <wire x2="1648" y1="4368" y2="6032" x1="1648" />
            <wire x2="2096" y1="6032" y2="6032" x1="1648" />
            <wire x2="1648" y1="6032" y2="6816" x1="1648" />
            <wire x2="2112" y1="6816" y2="6816" x1="1648" />
        </branch>
        <instance x="1984" y="3200" name="XLXI_73" orien="R0" />
        <instance x="2832" y="2912" name="XLXI_74" orien="R0" />
        <branch name="XLXN_104">
            <wire x2="2832" y1="2624" y2="2624" x1="2240" />
            <wire x2="2832" y1="2624" y2="2720" x1="2832" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="2528" y1="2864" y2="2864" x1="2240" />
            <wire x2="2528" y1="2784" y2="2864" x1="2528" />
            <wire x2="2832" y1="2784" y2="2784" x1="2528" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="2832" y1="3072" y2="3072" x1="2240" />
            <wire x2="2832" y1="2848" y2="3072" x1="2832" />
        </branch>
        <instance x="2000" y="3808" name="XLXI_76" orien="R0" />
        <instance x="2000" y="4032" name="XLXI_77" orien="R0" />
        <branch name="D1">
            <wire x2="704" y1="944" y2="944" x1="512" />
            <wire x2="720" y1="944" y2="944" x1="704" />
            <wire x2="704" y1="944" y2="1040" x1="704" />
            <wire x2="1008" y1="1040" y2="1040" x1="704" />
            <wire x2="1008" y1="912" y2="1040" x1="1008" />
            <wire x2="1600" y1="912" y2="912" x1="1008" />
            <wire x2="1952" y1="912" y2="912" x1="1600" />
            <wire x2="1600" y1="912" y2="1792" x1="1600" />
            <wire x2="1984" y1="1792" y2="1792" x1="1600" />
            <wire x2="1600" y1="1792" y2="2288" x1="1600" />
            <wire x2="1984" y1="2288" y2="2288" x1="1600" />
            <wire x2="1600" y1="2288" y2="2656" x1="1600" />
            <wire x2="1984" y1="2656" y2="2656" x1="1600" />
            <wire x2="1600" y1="2656" y2="3152" x1="1600" />
            <wire x2="1984" y1="3152" y2="3152" x1="1600" />
            <wire x2="1600" y1="3152" y2="3904" x1="1600" />
            <wire x2="2000" y1="3904" y2="3904" x1="1600" />
            <wire x2="1600" y1="3904" y2="4208" x1="1600" />
            <wire x2="2000" y1="4208" y2="4208" x1="1600" />
            <wire x2="1600" y1="4208" y2="4496" x1="1600" />
            <wire x2="2064" y1="4496" y2="4496" x1="1600" />
            <wire x2="1600" y1="4496" y2="5760" x1="1600" />
            <wire x2="1600" y1="5760" y2="5776" x1="1600" />
            <wire x2="1600" y1="5776" y2="5888" x1="1600" />
            <wire x2="2096" y1="5888" y2="5888" x1="1600" />
            <wire x2="1600" y1="5888" y2="6704" x1="1600" />
            <wire x2="1600" y1="6704" y2="6720" x1="1600" />
            <wire x2="2096" y1="6704" y2="6704" x1="1600" />
            <wire x2="1616" y1="5760" y2="5760" x1="1600" />
            <wire x2="2096" y1="5760" y2="5760" x1="1616" />
            <wire x2="1984" y1="3136" y2="3152" x1="1984" />
        </branch>
        <instance x="2816" y="3920" name="XLXI_79" orien="R0" />
        <branch name="XLXN_112">
            <wire x2="2256" y1="3392" y2="3392" x1="2240" />
            <wire x2="2816" y1="3392" y2="3392" x1="2256" />
            <wire x2="2816" y1="3392" y2="3664" x1="2816" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="2528" y1="3648" y2="3648" x1="2256" />
            <wire x2="2528" y1="3648" y2="3728" x1="2528" />
            <wire x2="2816" y1="3728" y2="3728" x1="2528" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2528" y1="3904" y2="3904" x1="2256" />
            <wire x2="2528" y1="3792" y2="3904" x1="2528" />
            <wire x2="2816" y1="3792" y2="3792" x1="2528" />
        </branch>
        <instance x="1984" y="1696" name="XLXI_66" orien="R0" />
        <instance x="1984" y="3552" name="XLXI_75" orien="R0" />
        <instance x="2064" y="4624" name="XLXI_82" orien="R0" />
        <branch name="XLXN_117">
            <wire x2="1696" y1="1168" y2="1168" x1="928" />
            <wire x2="1696" y1="1168" y2="1856" x1="1696" />
            <wire x2="1984" y1="1856" y2="1856" x1="1696" />
            <wire x2="1696" y1="1856" y2="2096" x1="1696" />
            <wire x2="1984" y1="2096" y2="2096" x1="1696" />
            <wire x2="1696" y1="2096" y2="2720" x1="1696" />
            <wire x2="1984" y1="2720" y2="2720" x1="1696" />
            <wire x2="1696" y1="2720" y2="2944" x1="1696" />
            <wire x2="1984" y1="2944" y2="2944" x1="1696" />
            <wire x2="1696" y1="2944" y2="3744" x1="1696" />
            <wire x2="2000" y1="3744" y2="3744" x1="1696" />
            <wire x2="1696" y1="3744" y2="4288" x1="1696" />
            <wire x2="2000" y1="4288" y2="4288" x1="1696" />
            <wire x2="1696" y1="4288" y2="4592" x1="1696" />
            <wire x2="2064" y1="4592" y2="4592" x1="1696" />
            <wire x2="1696" y1="4592" y2="7008" x1="1696" />
            <wire x2="2112" y1="7008" y2="7008" x1="1696" />
            <wire x2="1696" y1="672" y2="1168" x1="1696" />
            <wire x2="1952" y1="672" y2="672" x1="1696" />
            <wire x2="1984" y1="2928" y2="2944" x1="1984" />
            <wire x2="2000" y1="4272" y2="4288" x1="2000" />
            <wire x2="2064" y1="4560" y2="4592" x1="2064" />
        </branch>
        <branch name="XLXN_118">
            <wire x2="2816" y1="4464" y2="4464" x1="2320" />
            <wire x2="2816" y1="3856" y2="4464" x1="2816" />
        </branch>
        <instance x="2064" y="4880" name="XLXI_83" orien="R0" />
        <instance x="2080" y="5120" name="XLXI_84" orien="R0" />
        <instance x="2080" y="5328" name="XLXI_85" orien="R0" />
        <instance x="2832" y="5056" name="XLXI_86" orien="R0" />
        <branch name="XLXN_119">
            <wire x2="2832" y1="4784" y2="4784" x1="2320" />
            <wire x2="2832" y1="4784" y2="4864" x1="2832" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="2576" y1="4992" y2="4992" x1="2336" />
            <wire x2="2576" y1="4928" y2="4992" x1="2576" />
            <wire x2="2832" y1="4928" y2="4928" x1="2576" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="2832" y1="5200" y2="5200" x1="2336" />
            <wire x2="2832" y1="4992" y2="5200" x1="2832" />
        </branch>
        <instance x="2096" y="5584" name="XLXI_88" orien="R0" />
        <instance x="2096" y="5824" name="XLXI_89" orien="R0" />
        <branch name="XLXN_123">
            <wire x2="1856" y1="448" y2="448" x1="944" />
            <wire x2="1856" y1="448" y2="480" x1="1856" />
            <wire x2="1952" y1="480" y2="480" x1="1856" />
            <wire x2="1856" y1="480" y2="1440" x1="1856" />
            <wire x2="1856" y1="1440" y2="2528" x1="1856" />
            <wire x2="1984" y1="2528" y2="2528" x1="1856" />
            <wire x2="1856" y1="2528" y2="3296" x1="1856" />
            <wire x2="1984" y1="3296" y2="3296" x1="1856" />
            <wire x2="1856" y1="3296" y2="3552" x1="1856" />
            <wire x2="2000" y1="3552" y2="3552" x1="1856" />
            <wire x2="1856" y1="3552" y2="4080" x1="1856" />
            <wire x2="2000" y1="4080" y2="4080" x1="1856" />
            <wire x2="1856" y1="4080" y2="4752" x1="1856" />
            <wire x2="2064" y1="4752" y2="4752" x1="1856" />
            <wire x2="1856" y1="4752" y2="4928" x1="1856" />
            <wire x2="2080" y1="4928" y2="4928" x1="1856" />
            <wire x2="1856" y1="4928" y2="5392" x1="1856" />
            <wire x2="1856" y1="5392" y2="5408" x1="1856" />
            <wire x2="1856" y1="5408" y2="5616" x1="1856" />
            <wire x2="2096" y1="5616" y2="5616" x1="1856" />
            <wire x2="2096" y1="5616" y2="5632" x1="2096" />
            <wire x2="1856" y1="5616" y2="5824" x1="1856" />
            <wire x2="1856" y1="5824" y2="5840" x1="1856" />
            <wire x2="1856" y1="5840" y2="6368" x1="1856" />
            <wire x2="2096" y1="6368" y2="6368" x1="1856" />
            <wire x2="1856" y1="6368" y2="6576" x1="1856" />
            <wire x2="2096" y1="6576" y2="6576" x1="1856" />
            <wire x2="2096" y1="5824" y2="5824" x1="1856" />
            <wire x2="2096" y1="5392" y2="5392" x1="1856" />
            <wire x2="1984" y1="1440" y2="1440" x1="1856" />
            <wire x2="1952" y1="224" y2="224" x1="1856" />
            <wire x2="1856" y1="224" y2="448" x1="1856" />
        </branch>
        <instance x="2096" y="6016" name="XLXI_90" orien="R0" />
        <instance x="2096" y="6288" name="XLXI_91" orien="R0" />
        <instance x="2816" y="5904" name="XLXI_92" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="2816" y1="5456" y2="5456" x1="2352" />
            <wire x2="2816" y1="5456" y2="5648" x1="2816" />
        </branch>
        <branch name="XLXN_126">
            <wire x2="2576" y1="5696" y2="5696" x1="2352" />
            <wire x2="2576" y1="5696" y2="5712" x1="2576" />
            <wire x2="2816" y1="5712" y2="5712" x1="2576" />
        </branch>
        <branch name="XLXN_127">
            <wire x2="2576" y1="5888" y2="5888" x1="2352" />
            <wire x2="2576" y1="5776" y2="5888" x1="2576" />
            <wire x2="2816" y1="5776" y2="5776" x1="2576" />
        </branch>
        <branch name="XLXN_128">
            <wire x2="2816" y1="6128" y2="6128" x1="2352" />
            <wire x2="2816" y1="5840" y2="6128" x1="2816" />
        </branch>
        <instance x="2096" y="6560" name="XLXI_93" orien="R0" />
        <instance x="2096" y="6832" name="XLXI_94" orien="R0" />
        <branch name="D0">
            <wire x2="688" y1="1168" y2="1168" x1="512" />
            <wire x2="704" y1="1168" y2="1168" x1="688" />
            <wire x2="688" y1="1168" y2="1264" x1="688" />
            <wire x2="1760" y1="1264" y2="1264" x1="688" />
            <wire x2="1968" y1="1264" y2="1264" x1="1760" />
            <wire x2="1760" y1="1264" y2="1632" x1="1760" />
            <wire x2="1760" y1="1632" y2="2352" x1="1760" />
            <wire x2="1984" y1="2352" y2="2352" x1="1760" />
            <wire x2="1760" y1="2352" y2="3504" x1="1760" />
            <wire x2="1984" y1="3504" y2="3504" x1="1760" />
            <wire x2="1760" y1="3504" y2="3984" x1="1760" />
            <wire x2="2000" y1="3984" y2="3984" x1="1760" />
            <wire x2="1760" y1="3984" y2="4848" x1="1760" />
            <wire x2="1904" y1="4848" y2="4848" x1="1760" />
            <wire x2="1760" y1="4848" y2="5264" x1="1760" />
            <wire x2="2080" y1="5264" y2="5264" x1="1760" />
            <wire x2="1760" y1="5264" y2="5520" x1="1760" />
            <wire x2="2096" y1="5520" y2="5520" x1="1760" />
            <wire x2="1760" y1="5520" y2="5968" x1="1760" />
            <wire x2="2096" y1="5968" y2="5968" x1="1760" />
            <wire x2="1760" y1="5968" y2="6224" x1="1760" />
            <wire x2="2096" y1="6224" y2="6224" x1="1760" />
            <wire x2="1760" y1="6224" y2="6784" x1="1760" />
            <wire x2="2096" y1="6784" y2="6784" x1="1760" />
            <wire x2="1984" y1="1632" y2="1632" x1="1760" />
            <wire x2="1952" y1="416" y2="416" x1="1760" />
            <wire x2="1760" y1="416" y2="976" x1="1760" />
            <wire x2="1760" y1="976" y2="1264" x1="1760" />
            <wire x2="1952" y1="976" y2="976" x1="1760" />
            <wire x2="1904" y1="4816" y2="4848" x1="1904" />
            <wire x2="2064" y1="4816" y2="4816" x1="1904" />
            <wire x2="1968" y1="1232" y2="1264" x1="1968" />
            <wire x2="1984" y1="3488" y2="3504" x1="1984" />
            <wire x2="2000" y1="3968" y2="3984" x1="2000" />
            <wire x2="2096" y1="5952" y2="5968" x1="2096" />
            <wire x2="2096" y1="6768" y2="6784" x1="2096" />
        </branch>
        <instance x="2112" y="7072" name="XLXI_95" orien="R0" />
        <instance x="2752" y="6768" name="XLXI_96" orien="R0" />
        <branch name="XLXN_130">
            <wire x2="2752" y1="6432" y2="6432" x1="2352" />
            <wire x2="2752" y1="6432" y2="6576" x1="2752" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="2544" y1="6672" y2="6672" x1="2352" />
            <wire x2="2544" y1="6640" y2="6672" x1="2544" />
            <wire x2="2752" y1="6640" y2="6640" x1="2544" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="2752" y1="6912" y2="6912" x1="2368" />
            <wire x2="2752" y1="6704" y2="6912" x1="2752" />
        </branch>
        <instance x="3632" y="752" name="XLXI_97" orien="R0" />
        <instance x="3616" y="1936" name="XLXI_98" orien="R0" />
        <instance x="3632" y="2848" name="XLXI_99" orien="R0" />
        <instance x="3648" y="3840" name="XLXI_100" orien="R0" />
        <instance x="3632" y="4960" name="XLXI_101" orien="R0" />
        <instance x="3616" y="5808" name="XLXI_102" orien="R0" />
        <instance x="3600" y="6720" name="XLXI_103" orien="R0" />
        <branch name="LE">
            <wire x2="3312" y1="272" y2="688" x1="3312" />
            <wire x2="3632" y1="688" y2="688" x1="3312" />
            <wire x2="3312" y1="688" y2="1872" x1="3312" />
            <wire x2="3616" y1="1872" y2="1872" x1="3312" />
            <wire x2="3312" y1="1872" y2="2784" x1="3312" />
            <wire x2="3312" y1="2784" y2="3776" x1="3312" />
            <wire x2="3648" y1="3776" y2="3776" x1="3312" />
            <wire x2="3312" y1="3776" y2="4896" x1="3312" />
            <wire x2="3632" y1="4896" y2="4896" x1="3312" />
            <wire x2="3312" y1="4896" y2="5744" x1="3312" />
            <wire x2="3616" y1="5744" y2="5744" x1="3312" />
            <wire x2="3312" y1="5744" y2="6656" x1="3312" />
            <wire x2="3312" y1="6656" y2="6704" x1="3312" />
            <wire x2="3600" y1="6656" y2="6656" x1="3312" />
            <wire x2="3328" y1="2784" y2="2784" x1="3312" />
            <wire x2="3632" y1="2784" y2="2784" x1="3328" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="3296" y1="6640" y2="6640" x1="3008" />
            <wire x2="3296" y1="6592" y2="6640" x1="3296" />
            <wire x2="3600" y1="6592" y2="6592" x1="3296" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="3296" y1="5744" y2="5744" x1="3072" />
            <wire x2="3296" y1="5680" y2="5744" x1="3296" />
            <wire x2="3616" y1="5680" y2="5680" x1="3296" />
        </branch>
        <branch name="XLXN_138">
            <wire x2="3296" y1="4928" y2="4928" x1="3088" />
            <wire x2="3296" y1="4832" y2="4928" x1="3296" />
            <wire x2="3632" y1="4832" y2="4832" x1="3296" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="3360" y1="3760" y2="3760" x1="3072" />
            <wire x2="3360" y1="3712" y2="3760" x1="3360" />
            <wire x2="3648" y1="3712" y2="3712" x1="3360" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="3296" y1="2784" y2="2784" x1="3088" />
            <wire x2="3296" y1="2720" y2="2784" x1="3296" />
            <wire x2="3632" y1="2720" y2="2720" x1="3296" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="3360" y1="1856" y2="1856" x1="3120" />
            <wire x2="3360" y1="1808" y2="1856" x1="3360" />
            <wire x2="3616" y1="1808" y2="1808" x1="3360" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="3344" y1="640" y2="640" x1="3072" />
            <wire x2="3344" y1="624" y2="640" x1="3344" />
            <wire x2="3632" y1="624" y2="624" x1="3344" />
        </branch>
        <iomarker fontsize="28" x="3312" y="272" name="LE" orien="R270" />
        <branch name="a">
            <wire x2="3920" y1="656" y2="656" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="656" name="a" orien="R0" />
        <branch name="b">
            <wire x2="3904" y1="1840" y2="1840" x1="3872" />
        </branch>
        <iomarker fontsize="28" x="3904" y="1840" name="b" orien="R0" />
        <branch name="c">
            <wire x2="3920" y1="2752" y2="2752" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2752" name="c" orien="R0" />
        <branch name="d">
            <wire x2="3936" y1="3744" y2="3744" x1="3904" />
        </branch>
        <iomarker fontsize="28" x="3936" y="3744" name="d" orien="R0" />
        <branch name="e">
            <wire x2="3920" y1="4864" y2="4864" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="4864" name="e" orien="R0" />
        <branch name="f">
            <wire x2="3888" y1="5712" y2="5712" x1="3872" />
            <wire x2="3920" y1="5712" y2="5712" x1="3888" />
        </branch>
        <branch name="g">
            <wire x2="3888" y1="6624" y2="6624" x1="3856" />
        </branch>
        <iomarker fontsize="28" x="3888" y="6624" name="g" orien="R0" />
        <iomarker fontsize="28" x="3920" y="5712" name="f" orien="R0" />
        <instance x="2944" y="336" name="XLXI_105" orien="R0" />
        <branch name="Point">
            <wire x2="2896" y1="208" y2="304" x1="2896" />
            <wire x2="2944" y1="304" y2="304" x1="2896" />
        </branch>
        <branch name="p">
            <wire x2="3232" y1="304" y2="304" x1="3168" />
            <wire x2="3232" y1="304" y2="400" x1="3232" />
            <wire x2="3232" y1="400" y2="400" x1="3168" />
            <wire x2="3168" y1="400" y2="6784" x1="3168" />
            <wire x2="3872" y1="6784" y2="6784" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="2896" y="208" name="Point" orien="R270" />
        <iomarker fontsize="28" x="3872" y="6784" name="p" orien="R0" />
        <iomarker fontsize="28" x="528" y="448" name="D3" orien="R180" />
        <iomarker fontsize="28" x="512" y="688" name="D2" orien="R180" />
        <iomarker fontsize="28" x="512" y="944" name="D1" orien="R180" />
        <iomarker fontsize="28" x="512" y="1168" name="D0" orien="R180" />
    </sheet>
</drawing>