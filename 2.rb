def computar_medias (turma)
vetor_media = []
soma = 0 
cont = 0
	for i in 0..turma.length-1
			for n in 1..turma.length-1
					soma = vetor[i][n].to_i  + soma
					cont = cont + 1 
			end
	end
 media = soma / cont
 puts media 
end

def  alunos_notas_inferior (turma,n)
	
vetor_nome = []	
for i in 0..turma.length-1
		for n in 1..turma[i].length-1
				if turma[i][n].to_i < n 
				vetor_nome << turma[i][0]
				end 
		end	
end
		
puts vetor_nome
end

def eliminar_menor(turma)
menor_nota = 0 
	for i in 0..turma.length
		for n in 1..turma[i].length
			if turma[i][0].to_i < menor_nota
				menor_nota = turma[i][0].to_i		
			end
		end
	end
end
