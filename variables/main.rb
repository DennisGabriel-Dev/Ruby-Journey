person1 = "Dennis"
person2 = person1

person1[0] = "L"

puts person1
puts person2

puts "Mehtod dup"
person3 = "Tim"
person4 = person3.dup
person3[0] = "J"

puts person3
puts person4


puts "Freeze method"
person3 = "Tim"
person4 = person3.freeze
person3[0] = "J"

puts person3
puts person4