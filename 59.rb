puts "Letra A"
a = [["a", 35], ["c", 43], ["b", 17]]
x=a.sort
puts x

puts "Letra B"
a = [["a", 35], ["c", 43], ["b", 17]]
x=a.sort do |x, y| x[0] <=> y[0] end
puts x

puts "Letra C"
a = [["a", 35], ["c", 43], ["b", 17]]
x=a.sort do |x, y| x[1] <=> y[1] end 
puts x

puts "Letra D"
a = [["a", 35], ["c", 43], ["b", 17]] 
x=a.sort do |x, y| y[1] <=> x[1] end
puts x
