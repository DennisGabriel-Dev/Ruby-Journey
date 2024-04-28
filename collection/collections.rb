array = [3.14, "teste", "novo"]
puts array[1]
puts array[3]
puts array[-1]
puts array.inspect

puts "\n======= OTHER ARRAY ========"
array2 = Array.new # this create a empty array
array2[0] = "dennis"
puts array2.inspect
puts array2.[](0)

puts "\n============= RANGE ARRAY =============="
array3 = [1,2,3,4,5,6]
array3[10] = [20, 21]
puts array3[0,3]
puts '---------'
puts array3[3, 2]
puts '----------'
puts array3[3...-1]
puts array3.inspect

puts "\n\n======== REPLACE ARRAY ============"
a = [1, 3, 5, 7, 9]
a[2, 2] = 'cat'
a[2, 0] = 'dog'
a[1, 1] = [9, 8, 7] #[1, 9, 8, 7, "dog", "cat", 9]
a[0..3] = [] #["dog", "cat", 9]
a[5..6] = 99, 98 #["dog", "cat", 9, nil, nil, 99, 98]
puts a.inspect

puts "======== %w OPERATOR =========="
a = %w[dennis arroz feijão]
p a
puts a[1]

a = %i[dennis gabriel silva]
p a