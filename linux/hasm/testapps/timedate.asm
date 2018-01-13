.PB main
.PV buffer  -26

#allocate local storage
PUSHQ $FP
MOV $FP,$SP
LQI $R7,26
SUB $SP,$SP,$R7

#get the UTC time
LQI $R1,0
INT 4
MOV $R20,$R2

LQI $R1,20
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#decompose the UTC time into time/date values
MOV $R2,$R20
LQI $R1,1
INT 4

MOV $R9,$R3
MOV $R10,$R4
MOV $R11,$R5
MOV $R12,$R6
MOV $R13,$R7
MOV $R14,$R8

MOV $R2,$R9
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R10
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R11
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R12
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R13
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R14
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#get the equivalent local time
MOV $R2,$R20
LQI $R1,2
INT 4
MOV $R9,$R3
MOV $R10,$R4
MOV $R11,$R5
MOV $R12,$R6
MOV $R13,$R7
MOV $R14,$R8

MOV $R2,$R9
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R10
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R11
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R12
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R13
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0
MOV $R2,$R14
LQI $R1,20
INT 0
LQI $R2,32
LQI $R1,16
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#create a new time
LQI $R1,3
LQI $R2,0
LQI $R3,10
LQI $R4,23
LQI $R5,1
LQI $R6,8
LQI $R7,101
INT 4
MOV $R16,$R8

#get string rep of current time
MOV $R2,$R20
LAI $R3,$FP,buffer
LQI $R1,4
INT 4

LAI $R3,$FP,buffer
MOV $R2,$R3
LBI $R1,18
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#get string rep of new time
MOV $R2,$R16
LAI $R3,$FP,buffer
LQI $R1,4
INT 4

LAI $R3,$FP,buffer
MOV $R2,$R3
LBI $R1,18
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#compare created date with the todays
MOV $R2,$R20
MOV $R3,$R16
LQI $R1,5
INT 4

MOV $R2,$R4
LQI $R1,20
INT 0

LQI $R2,10
LQI $R1,16
INT 0
LQI $R2,13
LQI $R1,16
INT 0

#reclaim local storage
MOV $SP,$FP
POPQ $FP

HALT
.PE