puts (1..10) === 5 # true
puts (1..10) === 15 # false
puts (1..10) === 3.14159 # true
puts ('a'..'j') === 'c' # true
puts ('a'..'j') === 'z' # false
puts ('a'..'j').include?('c') # true
puts ('a'..'j').include?('bb') # false
# the cover method is equivalent include?, but for non numbers, it's work different.
puts ('a'..'j').cover?('bb') # true
