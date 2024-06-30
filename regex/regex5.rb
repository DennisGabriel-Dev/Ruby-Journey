str = "dog and cat"
pattern = /nd/
puts pattern.match?(str) # true
puts str.match?(pattern) # true

puts "mm/dd".match? Regexp.new("mm/dd") # true
puts "mm/dd".match? %r{mm/dd} # true

city_state_zip = %r{
  (\w.*),
  # city name followed by a comma
  \s
  # a space
  ([A-Z][A-Z]) # a two character state abbreviation
  \s
  # a space
  (\d{5})
  # 5 digits for the US simple zip code
}x

puts "Chicago, IL 60601".match?(city_state_zip) # => true

name = "Fats Waller"
name =~ /a/ # 1
name =~ /z/ # nil
/a/ =~ name # 1
/a/.match(name) # MatchData "a"
Regexp.new("all").match(name) # MatchData "all"

"Faster than a speeding bullet" =~ /speed/ # => 14
# => "ing bullet"
match_data = "Faster than a speeding bullet".match(/speed/)

# => #<MatchData "speed">
puts match_data[0]
# => "speed"
puts match_data.pre_match
# => "Faster than a "
puts match_data.post_match
# => "ing bullet"
