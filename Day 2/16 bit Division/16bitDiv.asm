LXI B,0000H 
LHLD 0002H 
XCHG
LHLD 0004H
LOOP2: MOV A,L
SUB E
MOV L,A
MOV A,H
SBB D
MOV H,A
JC LOOP1
INX B
JMP LOOP2
LOOP1: DAD D
SHLD 0006H
MOV L,C
MOV H,B
SHLD 0008H
HLT
