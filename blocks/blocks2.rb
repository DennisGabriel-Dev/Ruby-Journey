sum = 0

(1..4).map do |value| 
  square = value * value
  sum += square
end

puts sum


thing = "some shape"

[1,2].each { |thing|  puts thing }
puts thing