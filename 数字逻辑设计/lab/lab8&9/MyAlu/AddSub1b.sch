<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <signal name="A" />
        <signal name="Ci" />
        <signal name="B" />
        <signal name="Ctrl" />
        <signal name="S" />
        <signal name="Co" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="Ci" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="Ctrl" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="Co" />
        <blockdef name="Adder1b">
            <timestamp>2022-10-25T4:0:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <block symbolname="Adder1b" name="XLXI_11">
            <blockpin signalname="A" name="A" />
            <blockpin signalname="XLXN_16" name="B" />
            <blockpin signalname="Ci" name="C" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="Co" name="Co" />
        </block>
        <block symbolname="xor2" name="XLXI_12">
            <blockpin signalname="Ctrl" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="720" name="XLXI_11" orien="R0">
        </instance>
        <instance x="704" y="784" name="XLXI_12" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1056" y1="688" y2="688" x1="960" />
            <wire x2="1056" y1="624" y2="688" x1="1056" />
            <wire x2="1168" y1="624" y2="624" x1="1056" />
        </branch>
        <branch name="A">
            <wire x2="704" y1="560" y2="560" x1="528" />
            <wire x2="1168" y1="560" y2="560" x1="704" />
        </branch>
        <branch name="Ci">
            <wire x2="704" y1="832" y2="832" x1="528" />
            <wire x2="1120" y1="832" y2="832" x1="704" />
            <wire x2="1120" y1="688" y2="832" x1="1120" />
            <wire x2="1168" y1="688" y2="688" x1="1120" />
        </branch>
        <branch name="B">
            <wire x2="704" y1="656" y2="656" x1="528" />
        </branch>
        <branch name="Ctrl">
            <wire x2="704" y1="720" y2="720" x1="528" />
        </branch>
        <branch name="S">
            <wire x2="1712" y1="560" y2="560" x1="1552" />
        </branch>
        <branch name="Co">
            <wire x2="1712" y1="688" y2="688" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="528" y="560" name="A" orien="R180" />
        <iomarker fontsize="28" x="528" y="832" name="Ci" orien="R180" />
        <iomarker fontsize="28" x="528" y="656" name="B" orien="R180" />
        <iomarker fontsize="28" x="528" y="720" name="Ctrl" orien="R180" />
        <iomarker fontsize="28" x="1712" y="560" name="S" orien="R0" />
        <iomarker fontsize="28" x="1712" y="688" name="Co" orien="R0" />
    </sheet>
</drawing>