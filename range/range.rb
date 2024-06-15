digits = 0..9
puts digits.include? 5 # true
puts digits.max # 9
print digits.reject { |i| i < 5 } # [5, 6, 7, 8, 9]
puts digits.reduce(:+) # 45