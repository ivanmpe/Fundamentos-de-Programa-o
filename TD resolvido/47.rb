#verificar se a quantidade de itens pares.
vetor=[1, 3, 4, 2, 1, 5, 2]
i=1
aux1=1
aux2=2

while i<=7
	print "Digite o valor #{i}: "
	vetor<<gets.to_i
	i=i+1
end

if vetor.uniq.length < vetor.length
	print "Sim, pares repetidos: #{vetor.select{|v| vetor.count(v) > 1 }.uniq.length}"
	print "\npares esses com #{vetor.select{|v| vetor.count(v) > 1 }.uniq}"
else
	puts "Não existe!"
end
