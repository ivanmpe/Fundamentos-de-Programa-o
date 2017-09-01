#verificar se existem itens que são a soma de outos dois valores
vetor=[]
i=1
aux1=1
aux2=2

while i<=7
	print "Digite o valor #{i}: "
	vetor<<gets.to_i
	i=i+1
end

for a in 0..vetor.length-1
	if vetor[a].to_i==vetor[aux1].to_i+vetor[aux2].to_i
		print "#{vetor[a].to_i} = #{vetor[aux1].to_i} + #{vetor[aux2].to_i}\n"
	end
	aux1=aux1+1
	aux2=aux2+1
end