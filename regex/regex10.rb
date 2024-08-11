a = "quick brown fox"
puts a.sub(/[aeiou]/, "*")
puts a.gsub(/[aeiou]/, "*")

puts a.sub(/\s\S+/, "")
puts a.gsub(/\s\S+/, "")

a = "quick brown fox"
puts a.sub(/^./) { |match| match.upcase }
puts a.gsub(/[aeiou]/) { |vowel| vowel.upcase }

# OUTPUT:
# q*ick brown fox
# q**ck br*wn f*x
# quick fox
# quick
# Quick brown fox
# qUIck brOwn fOx
#
