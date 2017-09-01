duracao=[31,28,31,30,31,30,31,31,30,31]
nome=["jan", "fev","Mar", "abr", "mai","jun","jul", "ago", "set","out","nov","dez"]
puts "digite data "
n=gets.split("/")
dia, mes, ano=n[0].to_i,n[1].to_i,n[2].to_i
if mes>=1 and mes<=12
	mes_ok=true
else
	mes_ok=false
end
if mes_ok and dia>=1 and dia<=duracao[mes-1]
dia_ok=true
else 
dia_ok=false
end

if (dia==29 and mes==2) and ((ano%4==0 and ano%100!=0) ou ano%400==0)
dia_ok=true

end
if dia_ok and mes_ok
puts"#{dia} de #{nome[mes-1]} de #{ano}"
else 
puts "data inválida"
end
