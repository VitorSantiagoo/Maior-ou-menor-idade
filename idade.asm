.data
pergunta: 	.asciiz "Digite a sua idade: "
msg1:  		.asciiz "Você è menor de idade."
msg2:  		.asciiz "Você è maior de idade."
.text
li $v0, 4 		# Imprimir uma string
la $a0, pergunta 	# a0 = pergunta
syscall			# Executar
li $v0, 5		# Faz a leitura de um numero inteiro
syscall			# Executar
move $t1, $v0		# t1 = v0
li $t0, 18		# t0 = 18
blt $t1,$t0,menor 	# Desvie se $t1 for menor do que 18 para o bloco chamado menor
bge $t1,$t0,maior	# Desvie se $t1 for maior ou igual a 18 para o bloco chamado maior


menor: 
li $v0, 4 	# Imprimir uma string
la $a0,msg1	# a0 = msg1
syscall		# Executar
li $v0, 10 	# Finaliza o Programa
syscall 	# Executar 


maior:
li $v0, 4 	# Imprimir umas string
la $a0,msg2	# a0 = msg2
syscall		# Executar
li $v0, 10 	# Finaliza o programa
syscall 	# Execute

