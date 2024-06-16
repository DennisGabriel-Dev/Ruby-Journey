str = "Dog and Cat"

new_str =  str.sub(/Cat/ , 'Gerbil')

puts "Let's go to the #{new_str} for a pint."  # Let's go to the Dog and Gerbil for a pint.

new_str2 = str.sub(/a/, '*')
new_str3 = str.gsub(/a/, '*')
puts "using sub: #{new_str2}" # using sub: Dog *nd Cat
puts "usign gsub: #{new_str3}" # usign gsub: Dog *nd C*t

str = "now is the time"
str.sub!(/i/, '*') # ! change the receive
str.gsub!(/t/, 'T')
puts str # now *s The Time