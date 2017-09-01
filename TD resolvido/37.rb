vetor_data=[]
puts "Digite uma data da seguinte maneira __/__/__ "
data=gets
vetor_data=data.split("/")#o split vai separar novamente, mas dessa vez tirando os "/"
dia=vetor_data[0].to_i #convertendo para inteiro o valor contido no vetor 0
mes=vetor_data[1].to_i #convertendo para inteiro o valor contido vetor 1
ano=vetor_data[2].to_i #convertendo para inteiro o valor contido vetor 2

if dia>=1 and dia<=31 #vamos testar se essa data estar valida. 
 	if mes>=1 and mes<=12
		if ano>=1900
			puts "a Data é valida"
		else 
			puts"a data não eh valida"
		end
	end
end
