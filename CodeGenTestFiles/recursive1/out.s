.text
.align 2
.globl makeFive
.ent makeFive
makeFive:
SW $fp, 0 ($sp)
SW $31, -4 ($sp)
ADDI $fp, $sp,  0
SW $4, -8($fp)
LW $20, -8($fp)
nop
ADDI $24, $0, 5
SLT $17, $20, $24
BEQ $17, $0, L_2
nop
LW $20, -8($fp)
nop
ADDU $16, $0, $20
ADDI $20, $20, 1
SW $20, -8($fp)
LW $4, -8($fp)
nop
ADDI $sp, $fp, -12
JAL makeFive
nop
ADDU $2, $2, $0
LW $31, -4 ($fp)
nop
LW $fp, 0 ($fp)
nop
ADDI $sp, $fp,  0
JR $31
nop
J L_3
nop
L_2:
LW $2, -8($fp)
nop
LW $31, -4 ($fp)
nop
LW $fp, 0 ($fp)
nop
ADDI $sp, $fp,  0
JR $31
nop
L_3:
LW $31, -4 ($fp)
nop
LW $fp, 0 ($fp)
nop
ADDI $sp, $fp,  0
JR $31
nop
.end makeFive
