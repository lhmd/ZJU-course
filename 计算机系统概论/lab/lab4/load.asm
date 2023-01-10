            .ORIG x200
            LD R0,OS_SP
    
            LD R0,USER_PSR
            ADD R6,R6,#-1
            STR R0,R6,#0
    
            LD R0,USER_PC
            ADD R6,R6,#-1
            STR R0,R6,#0
    
            LD R0,KBSR_NUM
            STI R0,KBSR     ;;let KBSR[14] be 1
    
            LD R0,INTV_FC
            STI R0,INTV     ;;let INTVx80 be x2000
            RTI

OS_SP       .FILL x3000
USER_PSR    .FILL x8002
USER_PC     .FILL x3000
KBSR        .FILL xFE00
KBSR_NUM    .FILL x4000
INTV        .FILL x0180
INTV_FC     .FILL x2000
            .END

    .ORIG x2000
    ADD R6,R6,#-2
    STR R0,R6,#0
    STR R1,R6,#1
    LDI R0,KBDR
    LD R1,ASCBASE
    ADD R1,R1,R0
    BRnz Digit
    STI R0,Char
    BR exit
Digit
    ADD R1,R1,#9
    LDI R0,Pos
    ADD R0,R0,R1
    ADD R1,R0,#-16
    BRnz store
    LD R0,max_width
store
    STI R0,Pos
exit
    LDR R0,R6,#0
    LDR R1,R6,#1
    ADD R6,R6,#2
    RTI
    
KBDR .fill xFE02
ASCBASE .fill x-39
Char .fill x4000
Pos .fill x4001
max_width .fill #17
.end

.orig x3000
    LD R0,Initchar
    STI R0,Charuser
    LD R1,Initpos
    STI R1,Posuser
loop
    LDI R1,Posuser
    ADD R2,R1,#0
    LD R0,dot
dotbefore
    ADD R2,R2,#-1
    BRn exitbefore
    OUT
    BR dotbefore
exitbefore
    LDI R0,Charuser
    OUT
    OUT
    OUT
    NOT R2,R1
    ADD R2,R2,#9
    ADD R2,R2,#9    ;;R2 <- 17 - R1
    LD R0,dot
dotafter
    ADD R2,R2,#-1
    BRn exitafter
    OUT
    BR dotafter
exitafter
    LD R0,newline
    OUT
    LDI R1,Posuser
    BRz Delaycycle
    ADD R1,R1,#-1
    STI R1,posuser
Delaycycle
    LD R2,Delaytime
Delay
    ADD R2,R2,#-1
    BRp Delay
    BR loop
    
Charuser .fill x4000
Posuser .fill x4001
dot .fill x2e
newline .fill xa
Initchar .fill x61
Initpos .fill x5
Delaytime .fill x1000
    
    
.end
