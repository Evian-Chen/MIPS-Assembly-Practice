.data 
msg_A_plus: .asciiz "The letter grade is A+.\nDescription: Superior."
msg_A: .asciiz "The letter grade is A.\nDescription: Excellent."
msg_A_minus: .asciiz "The letter grade is A-.\nDescription: Excellent, but needs improvement."
msg_B_plus: .asciiz "The letter grade is B+.\nDescription: Very good."
msg_B: .asciiz "The letter grade is B.\nDescription: Good."
msg_B_minus: .asciiz "The letter grade is B-.\nDescription: Good, but needs improvement."
msg_C_plus: .asciiz "The letter grade is C+.\nDescription: Satisfactory."
msg_C: .asciiz "The letter grade is C.\nDescription: Satisfactory, but needs improvement."
msg_C_minus: .asciiz "The letter grade is C-.\nDescription: Satisfactory with major flaws."
msg_D: .asciiz "The letter grade is D.\nDescription: Unsatisfactory, repeat recommended."
msg_E: .asciiz "The letter grade is E.\nDescription: Failure"
msg_X: .asciiz "Not graded due to unexcused absences or other reasons."
msg_prompt: .asciiz "Please input the numerical grade (0~100):\n"
msg_null: .asciiz "Description: Illegal numerical grade."

.text
la $a0, msg_prompt  # load prompt message
li $v0, 4  # specify syscall (print string)
syscall  # print prompt

li $v0, 5  # specify syscall (read integer)
syscall  # input integer

# set up boundary
li $t0, 90
li $t1, 85
li $t2, 80
li $t3, 77
li $t4, 73
li $t5, 70
li $t6, 67
li $t7, 63
li $s0, 60
li $s1, 50
li $s2, 1
li $s3, 101
 
# use concept of switch case
bge $v0, $s3, CASE_NULL  # check illgal input
bge $v0, $t0, CASE_A_P  # check if input is greater  than or equal to $t0
bge $v0, $t1, CASE_A
bge $v0, $t2, CASE_A_M
bge $v0, $t3, CASE_B_P
bge $v0, $t4, CASE_B
bge $v0, $t5, CASE_B_M
bge $v0, $t6, CASE_C_P
bge $v0, $t7, CASE_C
bge $v0, $s0, CASE_C_M 
bge $v0, $s1, CASE_D
bge $v0, $s2, CASE_E
j DEFAULT  # for 0
 
# cases blocks below
CASE_NULL:
la $a0, msg_null
li $v0, 4
syscall
j EXIT
 
CASE_A_P:
la $a0, msg_A_plus
li $v0, 4
syscall
j EXIT

CASE_A:
la $a0, msg_A
li $v0, 4
syscall
j EXIT

CASE_A_M:
la $a0, msg_A_minus
li $v0, 4
syscall
j EXIT

CASE_B_P:
la $a0, msg_B_plus
li $v0, 4
syscall
j EXIT

CASE_B:
la $a0, msg_B
li $v0, 4
syscall
j EXIT

CASE_B_M:
la $a0, msg_B_minus
li $v0, 4
syscall
j EXIT

CASE_C_P:
la $a0, msg_C_plus
li $v0, 4
syscall
j EXIT

CASE_C:
la $a0, msg_C
li $v0, 4
syscall
j EXIT

CASE_C_M:
la $a0, msg_C_minus
li $v0, 4
syscall
j EXIT

CASE_D:
la $a0, msg_D
li $v0, 4
syscall
j EXIT

CASE_E:
la $a0, msg_E
li $v0, 4
syscall
j EXIT

DEFAULT:
la $a0, msg_X
li $v0, 4
syscall
j EXIT

# end the program
EXIT:
li $v0, 10  # syscall 10 to exit the program
syscall
