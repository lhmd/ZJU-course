;Input
;if it is '\r',break
;else search the op type
;type: +43 -45 <60 >62     4 functions
;Output
.ORIG x3000
            ;init
            LD R6,queue_head
            LD R7,queue_tail
            LD R2,put
            LD R1,put
    input   GETC
            OUT
            ;'\r'
            ADD R5,R0,#-10
            BRz output
            ;+
            LD R3,ASCLL_+
            NOT R3,R3
            ADD R5,R0,R3
            ADD R5,R5,#1
            BRz push_l
            ;-
            LD R3,ASCLL_-
            NOT R3,R3
            ADD R5,R0,R3
            ADD R5,R5,#1
            BRz pop_l
            ;<
            LD R3,ASCLL_<
            NOT R3,R3
            ADD R5,R0,R3
            ADD R5,R5,#1
            BRz push_r
            ;>
            LD R3,ASCLL_>
            NOT R3,R3
            ADD R5,R0,R3
            ADD R5,R5,#1
            BRz pop_r
    
    output  NOT R3,R2
            ADD R3,R3,R1
            ADD R3,R3,#1
            BRz EXIT
            LDR R0,R1,#0
            OUT
            ADD R1,R1,#1
            BR output

    push_l  GETC
            OUT
            STR R0,R6,#0
            ADD R6,R6,#-1
            BR input

    pop_l   
            NOT R5,R6
            ADD R5,R5,R7
            BRz op_
            BR pop_con
    op_     LD R4,_
            STR R4,R2,#0
            ADD R2,R2,#1
            BR input
    pop_con ADD R6,R6,#1
            LDR R4,R6,#0
            STR R4,R2,#0
            ADD R2,R2,#1
            BR input

    push_r  GETC
            OUT
            STR R0,R7,#0
            ADD R7,R7,#1
            BR input

    pop_r   NOT R5,R6
            ADD R5,R5,R7
            BRz op_
    pop_co  ADD R7,R7,#-1
            LDR R4,R7,#0
            STR R4,R2,#0
            ADD R2,R2,#1
            BR input

    EXIT    HALT


queue_head .fill x4000
queue_tail .fill x4001
_       .fill x005F
put     .fill x5000
ASCLL_+ .fill x002B
ASCLL_- .fill x002D
ASCLL_< .fill x005B
ASCLL_> .fill x005D
.END