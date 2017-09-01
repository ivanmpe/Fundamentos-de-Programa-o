contador_linhas, nova_linha, contador, cont_aparicao, palavras_sem_rep, cont, qtde_palavras, palavras_ant, palavras_pos, vetor_linha, novo_vetor, vetor_sem_rep= 0,0,0,0,0,0,0,[],[],[],[],[]
if File.exists?(ARGV[0]) 
arq_txt=File.open(ARGV[0],"r") #abertura do txt

while arq_txt.eof? == false
	linhas=arq_txt.readline
	contador_linhas=contador_linhas+1 #contar o numero de linhas
	vetor_linha<<linhas #cada linha do txt será colocado em um vetor
end

#gsub irá tirar as pontuacoes.
for n in 0..vetor_linha.length-1
	vetor_linha[n]=vetor_linha[n].gsub(/[@.,#:?!\[\];@1234567890]/," ") 
end

#upcase irá colocar todos as letras em maiusculas
for t in 0..vetor_linha.length-1
	vetor_linha[t]=vetor_linha[t].upcase
end
	
	
	for i in 0..contador_linhas-1  # O vetor_linha' terá um numero de elementos .
			vetor_linha[i] = vetor_linha[i].split(" ")  # Esse novo vetor será separado por espaço gerando varios elementos em cada linha.
			vetor_linha[i].delete("?")   # Se caso o vetor tiver algum elemento isolado algum desses caracteres , será excluido.
			vetor_linha[i].delete(",")
			vetor_linha[i].delete(":")  
			vetor_linha[i].delete("#")
			vetor_linha[i].delete(";")
			vetor_linha[i].delete("***")
			vetor_linha[i].delete("*")
			vetor_linha[i].delete(".")
			vetor_linha[i].delete("@")
			vetor_linha[i].delete("$")
			vetor_linha[i].delete("(")
			vetor_linha[i].delete(")")
				for n in 0..vetor_linha[i].length-1    
			    tirar_pontuacao = vetor_linha[i][n].split("!")   
				novo_vetor = novo_vetor+ tirar_pontuacao   
			end

end

#Algumas palavras serão excluidas. Artigos, por exemplo.
arq_exc=File.open("exc.txt","r")
while !arq_exc.eof?
palavra_exc	= arq_exc.readline.chomp #chomp quebra a linha
novo_vetor.delete(palavra_exc)
end

vetor_sem_rep << novo_vetor 
vetor_sem_rep = vetor_sem_rep.flatten
puts "____________________Informações Gerais sobre Arquivo____________________"
puts "Possue #{contador_linhas} linhas "
puts "Número total de palavras => #{novo_vetor.length}" 
while vetor_sem_rep.count!= 0 #com esse laço vamos contar as palavras que não estão repetidas.
vetor_sem_rep.delete(vetor_sem_rep[0])
qtde_palavras = qtde_palavras + 1
end
puts "Quantidade de palavras sem repetição => #{qtde_palavras}" 



#mostra a distancia de duas palavras
if ARGV[1]==("busca_dist")
puts"_____Opção Escolhida foi BuscaDistancia_______" 
puts ""
ARGV[2]=ARGV[2].upcase
ARGV[3]=ARGV[3].upcase

for i in 0..novo_vetor.length-1
	if novo_vetor[i] == ARGV[2]
		for w in 0..novo_vetor.length-1
			if novo_vetor[w] ==	ARGV[3]
				dis=(i-w).abs
				puts "a Distancia entre #{ARGV[2]} e #{ARGV[3]} eh #{dis} "
			end
		end
	end
end

end


#Esse laço testa em qual(is) linhas determinada palavra aparece.
if ARGV[1]==("buscar")
ARGV[2]=ARGV[2].upcase
puts " _________Opção escolhida foi Buscar_________" 

for i in 1..vetor_linha.length-1
	if vetor_linha[i].include?(ARGV[2]) == true
		puts "a palavra #{ARGV[2]} está na linha #{i+1}"
	end
end
puts ""

#Esse laço determina qual(is) posições elas se encontram.
for i in 0..novo_vetor.length-1
	if ARGV[2] == novo_vetor[i].to_s
		contador=contador+1
		puts "#{ARGV[2]} eh #{contador}º palavra do texto" 
		cont_aparicao=cont_aparicao+1
	else
		contador=contador+1
	end	
end
puts ""
puts "E a palavra #{ARGV[2]} apareceu #{cont_aparicao} vezes"
puts ""
end


#lista as palavras em ordem alfabetica
if ARGV[1]==("listar")
puts "_________Opçao escolhida foi LISTAR._________" 
	puts" ____As palavras estão em ordem lexicografica___"	#o metodo sort vai ordenar o vetor em ordem lexicografica
	puts""
	novo_vetor.sort!
	puts novo_vetor
	
end


#ordem de aparição de cada palavra decrescente
if  ARGV[1]==("listar") and ARGV[2]==("decresc") and ARGV[2]!=("cresc")
			vetor_ordenado=[]
			puts "Ordem decrescente de frequencia de cada palavra"
			vetor_ordenado = Hash[novo_vetor.group_by{ |w| w }.map { |w, novo_vetor | [w, novo_vetor.size] } ] 
			ordenado_decr = vetor_ordenado.sort do |x,y| y[1] <=> x[1] end
			puts ordenado_decr 
end


#ordem de aparição de cada palavra crescente
if  ARGV[1]==("listar") and  ARGV[2]!=("decresc") and ARGV[2]==("cresc") 
			vetor_ordenado_cres=[]
			puts "Ordem crescente de frequencia de cada palavra "
			vetor_ordenado_cres = Hash[novo_vetor.group_by{ |w| w }.map { |w, novo_vetor | [w, novo_vetor.size] } ] 
			ordenado_cres = vetor_ordenado_cres.sort do |x,y| x[1] <=> y[1] end
			puts ordenado_cres
end 


if ARGV[1]==("busca_par")
n=ARGV[3].to_i              
ARGV[2]=ARGV[2].upcase     
     
     
for i in 0..novo_vetor.length-1  
     if novo_vetor[i] == ARGV[2]  
		for j in 1..n
         palavras_ant<< novo_vetor[i-j]  
         palavras_pos<< novo_vetor[i+j]  
           end
     end    
end  
puts" "
puts "____________Palavras antecessoras:____________"
     
for i in 0..palavras_ant.length-1
puts palavras_ant[i]
	if palavras_ant[i] == nil
		puts "Error não tem como buscar a palavra"
	else
		puts palavras_ant[i]
	end
end
puts" "
puts "______________Palavras sucessoras:____________"
     
for n in 0..palavras_pos.length-1
	if palavras_pos[n]== nil
		puts "Error não tem como buscar a palavra, pos já chegou no fim do texto."
	else
		puts palavras_pos[n]
	end
end
puts ""
     
end



arq_txt.close
else
puts "Não existe esse arquivo"
end
