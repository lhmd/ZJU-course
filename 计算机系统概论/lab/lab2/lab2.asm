.ORIG x3000
;reset the register
    AND R1,R1,#0        ;R1 is the number input
    AND R2,R2,#0        ;R2 is the temp 4_number in the change
    AND R3,R3,#0        ;R3 is counter
    AND R4,R4,#0        ;R4 is temp register,store the space of binary number
    AND R5,R5,#0        ;R5 is another temp register,to store the number that >>4
;read in the decimal number
    read_in GETC
    OUT
    ;if it is '\r'
    ADD R4,R0,#-10      ;'\r' ASCLL is 10
    BRz break           ;if the ch is '\r',break
    ;if it is number
    AND R4,R4,#0
    ADD R3,R4,#10
    loop_10 ADD R4,R4,R1
    ADD R3,R3,#-1
    BRp loop_10
    ADD R1,R4,#0        ;load R4 to R1
    
    ADD R0,R0,#-12
    ADD R0,R0,#-12
    ADD R0,R0,#-12
    ADD R0,R0,#-12      ;ASCLL turn to number
    
    ADD R1,R1,R0
    BR read_in          ;loop return
    break
;do the change
    ;init
    LD R4,numspace
    AND R3,R3,#0
    ADD R3,R3,#4
    ;loop 4 times
    loop_4 AND R2,R1,#15
    STR R2,R4,#0
    ADD R4,R4,#1
    ;R1>>4
    LD R2,trick
    AND R1,R1,R2
    BRz divide_over
    AND R5,R5,#0
    
    divide ADD R5,R5,#1
    ADD R1,R1,#-16
    BRnp divide
    ADD R1,R5,#0
    divide_over ADD R3,R3,#-1
    BRp loop_4
;output
    AND R3,R3,#0
    ADD R3,R3,#4
    LD R4,numspace
    ADD R4,R4,#3
    
    ;turn the number to ASCLL
    loop_out LDR R0,R4,#0
    AND R2,R2,#0
    ADD R2,R0,#-10
    ;if the number>10 it is ntype,or goon
    BRn ntype
    LD R5,ASCLL_zerod
    BR goon
    ntype LD R5,ASCLL_zerop
    goon ADD R0,R0,R5
    OUT
    ADD R4,R4,#-1
    ADD R3,R3,#-1
    
    BRp loop_out
    
    HALT
ASCLL_zerop .FILL x30
ASCLL_zerod .FILL x37
numspace .FILL x3100
trick .FILL xfff0
.END
    