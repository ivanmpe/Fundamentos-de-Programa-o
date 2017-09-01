todas_notas=[]
n=0

begin 
	puts "Digite uma nota"
	n=gets
	todas_notas << n #todos os numeros vão sendo armazenados nesse vetor 
end while (n.to_s)!="fim"

soma = 0 
for i in 0..todas_notas.lenght-1 #Vamos somar os valores para depois calcularmos a media geral
	soma=soma+todas_notas[i].to_s
end

media = soma /(todas_notas.length)

cont = 0
for i in 0..todas_notas.length-1 #vamos percorrer o vetor pra saber quais notas são abaixo de 7
	if todas_notas[i] < 7.0
		cont = cont + 1 
	end
end

puts " A media geral é #{media}"
puts " A qtde abaixo de 7 é #{cont}"
