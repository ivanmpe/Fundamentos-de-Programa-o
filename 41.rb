todos_numeros=[]
pos=[]
neg=[]
for i in 1..8 #como precisamos de 8 notas então já sabemos quantas vezes temos que repetir os comandos a seguir
	puts "digite #{i} valor"
	n=gets
	todos_numeros << n #todos os serão armazenados nesse vetor.
	if n.to_i  >= 0 #Como é uma string tenho que converte-la em inteiro para testar se é true, caso esse numero seja positivo ele será armazenado no vetor pos.
 		pos << n
	else #Logo não sendo positivo será armazenado nos negativos. '-' 
		neg << n 
	end
end

puts "Os numeros são \n#{todos_numeros} "
puts "Os positivos são \n#{pos} "
puts "Os negativos são \n#{neg}"
