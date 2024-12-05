puts ("banana" in "banana") # true
puts ("banana" in "apple") # false
puts (3 in 3) # true
puts (2i in 2i) # true

puts (3 in Integer) # true
puts ("banana" in /b(an+)/) # true

puts (3 in 0..10) # true


puts(([1, 2, 3] in [Integer, Integer, Integer])) # true

puts(([1, 2, 3] in [])) # false

puts(({name: "Dennis", city: "Coelho Neto"} in {city: String})) # true
puts(({name: "Dennis", city: "Coelho Neto"} in {})) # false

puts ([3, "banana", "apple"] in [1..10, String, /p{2}/]) # true


puts ([3, "banana", "apple"] in [1..10, String, *]) # true
puts ([3, "banana", "apple"] in [*, String, *]) # true
puts ({likes: [3, 5], dislikes: [2, 4]} in {likes: [1..5, *], dislikes: [2, *]}) # true

puts ([1, 2, 3] in [Integer, Integer, Integer] | [String, String, String]) # true

puts (["a", "b", "c"] in [Integer, Integer, Integer] | [String, String, String]) # true

puts (["a", "b", :c] in [Integer, Integer, Integer] | [String, String, String]) # false
