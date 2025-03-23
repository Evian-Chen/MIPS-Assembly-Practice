.data
prompt: .asciiz "Please input a non-negative integer:\n"
result: .asciiz "The sum of the digits of "
is_text: .asciiz " is "
illegal_text: .asciiz "Illegal input."

.text
.global main
main:
	# prompt user
	li $v0, 4  # syscall of print string
	la $a0, prompt  # put prompt into a0 
	syscall
	
	# read input
	li $v0, 5  # syscall of read Int
	syscall
	move $t0, $v0  # move v0 (input Int) to t0
	
	# check negative
	bltz $t0, illegal
	
	# make sure Int int0 is legal, then move it to s0 (ready to use in calculation)
	move $s0, $t0  # save input
	move $a0, $t0  # for recursion
	
	# call recursive function
	jal digits_sum
	move $s1, $v0
	
	# print result
	li $v0, 4 
	la $a0, result
	syscall
	li $v0, 1  # print Int
	move $a0, $s0  # get original input Int
	syscall
	li $v0, 4 
	la $a0, is_text
	syscall
	li $v0, 1
	move $a0, $s1  # get original input Int
	syscall
	
	li $v0, 10  # syscall 10 to exit the program
	syscall
	
# define recursive function
digits_sum:
	beqz $a0, base_case  # input 0, then return 0
	
	li $t1, 10  # prepare Int 10
	div $a0, $t1  # division
	mfhi $t2   # $t2 = n % 10
	mflo $t3   # $t3 = n / 10
	
	addi $sp, $sp, -8  # open memory space
	sw $ra, 0($sp)  # save to stack
	sw $t2, 4($sp)
	
	move $a0, $t3
	jal digits_sum  # call recursion
	
	lw $ra, 0($sp)  # take the digit out
	lw $t2, 4($sp)
	addi $sp, $sp, 8
	
	add $v0, $v0, $t2  # add to result
	jr $ra

# base case of recursion
base_case:
	li $v0, 0
	jr $ra
	
# illegal case handling
illegal:
	# print illegal text
	li $v0, 4
	la $a0, illegal_text
	syscall
	
	li $v0, 10
	syscall
