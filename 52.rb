vetor=[]
vetor_invertido=[]
cont=0

puts" Digite uma palavra para testarmos se é palindromo"
pal=gets
pal.strip! #retira os espaços que vão atrapalhar na hora de testar cada caractere.
vetor = pal.split("")  #separa o vetor em caracteres 
vetor_invertido = vetor.reverse #crio um vetor invertido para depois compara-lo

for i in 0..vetor.length-1
 	if vetor[i] == vetor_invertido[i] #testo se cada caractere é igual, caso seja igual então cont soma + 1 
		cont=cont+1
	end
end

if cont == vetor.length #caso o cont seja igual ao Vetor deduzimos que todos os caracteres são igua
		puts "Eh palindromo"
else
		puts "Não eh palindromo"
end
