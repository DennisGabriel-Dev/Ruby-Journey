"value" in String => a
puts a #return variable value and true

"value" => String => a
puts a # don't return true only variable value


"value 2" in a
puts a # value 2

"Another value" => b
puts b


[1, "potato", 2, "potato"] => [first, String, second, String]
puts "the numbers are #{first} and #{second}" # the numbers are 1 and 2

{rank: "Ace", suit: "Hearts"} => {rank:, suit:}
puts "Your card is the #{rank} of #{suit}." # Your card is the Ace of Hearts.


[1, "potato", 2, "potato"] in [Integer => first_test, Integer, Integer => second_test, String]
# the pattern doesnt match with pattern, because of this, the second_test variable is undefined
puts "the numbers are #{first_test} and #{second_test}" # the numbers are 1 and

[1, "potato", 2, "potato"] => [Integer => first_test, String, Integer => second_test, String]
puts "the numbers are #{first_test} and #{second_test}" # the numbers are 1 and 2


{rank: 'Ace', suit: 'Hearts'} => {rank: , suit: }
puts "Your card is the #{rank} of #{suit}"


# change in for => will result an error, because the pattern does not matches it
[1, "potato", 2, "potato"] in [Integer => first, Integer, Integer => second, String]
puts "the first is #{first} and the second is #{second}"
