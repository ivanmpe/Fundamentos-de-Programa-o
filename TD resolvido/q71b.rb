 vetor1=[]
 arquivo=File.open("clientes.txt", "r")
 
 while !arquivo.eof?
	vetor1<<arquivo.readline # lê uma linha.
 end
 arquivo.close
 
arquivo=File.new("clientes-ordenados.txt", "w")
arquivo.puts vetor1.sort_by {|e| e.length}
arquivo.close
 
 
 puts "Concluída a criação do arquivo clientes-ordenados.txt com sucesso!"