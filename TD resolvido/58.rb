puts "Letra A"
a = [["a", 35], ["c", 43], ["b", 17]]
a.sort

puts a


puts "Letra B"
a = [["a", 35], ["c", 43], ["b", 17]]
a.sort do |x, y| x[0] <=> y[0] end
puts a

puts "Letra C"
a = [["a", 35], ["c", 43], ["b", 17]]
a.sort do |x, y| x[1] <=> y[1] end 
puts a

puts "Letra D"
a = [["a", 35], ["c", 43], ["b", 17]] 
a.sort do |x, y| y[1] <=> x[1] end
puts a

