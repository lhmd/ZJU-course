;input
;dfs
;output
.ORIG x3000
    ;init
            AND R0,R0,#0
            AND R1,R1,#0
            AND R2,R2,#0
            AND R3,R3,#0
            AND R4,R4,#0
            AND R5,R5,#0
            AND R6,R6,#0
            AND R7,R7,#0
    ;input
            GETC
            OUT
            ADD R3,R0,#0
            LD R4,N48
            ADD R3,R3,R4
            GETC
            OUT
            ADD R4,R0,#-10
            BRz inover
            AND R3,R3,#0
            LD R4,N48
            ADD R0,R0,R4
            LD R4,P10
            ADD R3,R0,R4
            GETC
            OUT
            
    inover  ADD R4,R3,#0        ;cnt
            LD R6,A1
    loop_in GETC
            OUT
            ADD R1,R0,#0
            GETC
            OUT
            LD R2,space
            ADD R2,R0,R2
            BRz ne
            LD R5,P10
            ADD R1,R0,R5
            GETC
            OUT
    ne      LD R2,N48
            ADD R1,R1,R2
            STR R1,R6,#0
            ADD R6,R6,#1


​            
            GETC
            OUT
            ADD R1,R0,#0
            GETC
            OUT
            LD R2,P10
            NOT R2,R2
            ADD R2,R0,R2
            ADD R2,R2,#1
            BRz ne2
            LD R5,P10
            ADD R1,R0,R5
            GETC
            OUT
    ne2     LD R2,N48
            ADD R1,R1,R2
            STR R1,R6,#0
            ADD R6,R6,#1
            
            ADD R4,R4,#-1
            BRp loop_in
            
    ;dfs
            AND R1,R1,#0
            AND R2,R2,#0
            LD R6,A2            ;dfs init
            JSR dfs



    EXIT    HALT
    
    dfs    ;入栈
            ADD R6,R6,#-1
            STR R1,R6,#0        ;m
            ADD R6,R6,#-1
            STR R2,R6,#0        ;now
            ADD R6,R6,#-1
            STR R7,R6,#0
            ;main
            NOT R0,R1
            ADD R0,R0,R3
            ADD R0,R0,#1
            BRnp CON
            AND R0,R0,#0
            ADD R0,R0,#1
            ADD R4,R3,#0
    zuoyi   ADD R0,R0,R0
            ADD R4,R4,#-1
            BRnp zuoyi
            NOT R0,R0
            ADD R0,R0,R2
            ADD R0,R0,#2
            BRnp NEXT
            BRz  PRINT
    CON     LD R5,A1
            ADD R0,R1,R1
            ADD R5,R5,R0
            LDR R4,R5,#0
            LD R0,ANSWER
            ADD R0,R0,R1
            STR R4,R0,#0
            AND R0,R0,#0
            ADD R0,R0,#1
            ADD R4,R4,#-1
            BRz ok
    zuoyi2  ADD R0,R0,R0
            ADD R4,R4,#-1
            BRnp zuoyi2
    ok      ADD R2,R2,R0
            ADD R1,R1,#1
            JSR dfs
            
            LDR R1,R6,#2
            LDR R2,R6,#1
            LD R5,A1
            ADD R0,R1,R1
            ADD R0,R0,#1
            ADD R5,R5,R0
            LDR R4,R5,#0
            LD R0,ANSWER
            ADD R0,R0,R1
            STR R4,R0,#0
            AND R0,R0,#0
            ADD R0,R0,#1
            ADD R4,R4,#-1
            BRz ok2
    zuoyi3  ADD R0,R0,R0
            ADD R4,R4,#-1
            BRnp zuoyi3
    ok2     ADD R2,R2,R0
            ADD R1,R1,#1
            JSR dfs
            BR NEXT
    PRINT   LD R4,ANSWER
    goon    LDR R0,R4,#0
            ADD R4,R4,#1
            ADD R2,R0,#-10
            BRn  one
            LD R1,ASCLL_zerop
            ADD R0,R1,#1
            OUT
            ADD R0,R1,R2
            OUT
            BR doit
    one     LD R1,ASCLL_zerop
            ADD R0,R0,R1
            OUT
    doit    LD R0,pspace
            OUT
            ADD R3,R3,#-1
            BRz EXIT
            BR goon
            
            ;出栈
    NEXT    LDR R7,R6,#0
            ADD R6,R6,#1
            LDR R2,R6,#0
            ADD R6,R6,#1
            LDR R1,R6,#0
            ADD R6,R6,#1
            RET

P10 .fill x000A
N48 .fill x-030
space   .fill x-20
pspace  .fill x20
A1  .fill x4000
A2  .fill xFE00
ANSWER  .fill x5000
ASCLL_zerop .FILL x30
ASCLL_zerod .FILL x37

.END
