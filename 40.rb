notas=[7.0, 3.8, 8.0, 6.5, 6.3, 9.3, 10.0, 7.8 , 9.3]
soma=0
notas_baixas=0
maior_nota=0
notas_abaixo_media=0
segunda_maior_nota=0
for i in 0..notas.length-1
soma=(notas[i].to_f)+soma #Iremos somar as notas e depois iremos pegar esse valor calcular a media

if notas[i].to_f < 6 #vamos contar as notas que estão abaixo da media, Se O valor do vetor [i] for menor do que 6, notas_baixas irá somar + 1 
notas_baixas=notas_baixas+1
end

if notas[i].to_f > maior_nota #vamos testar se o valor do vetor[i] é  maior do que o valor da maior nota que ja apareceu
segunda_maior_nota=maior_nota #Concluimos que se essa condição é verdadeira então a nota que estava armazenada emm maior_nota já não é mais a primeira e sim a segunda.
maior_nota=notas[i].to_f #Logo a maior nota agora será ha que a condição disse que era verdadeira.
		end	
end

media_notas=soma/notas.length

#como agora eu sei qual é a media geral da turma posso então testar quais notas foram abaixo dessa media.
for i in 0..notas.lentgth-1
	if notas[i].to_f < media_notas
		notas_abaixo_media=notas_abaixo_media+1
	end
end

puts " A media da turma é #{media}"
puts " Qtde de notas abaixo de 6 #{notas_baixas}"
puts " Qtde de notas abaixo da media são #{notas_abaixo_media}"
puts " A maior nota é #{maior_nota}"
puts " A segunda maior nota é #{segunda_maior_nota}"
