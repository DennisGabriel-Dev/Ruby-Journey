puts "cat or dog".match? %r{cat} # true
# is the same result below
puts "cat or dog".match? /cat/ # true

chorrin = "dog"
# I can pass a variable into %r{} or //
puts "dog or cat".match? %r{#{chorrin}} # true

# method without ? return the word match
puts "dog or cat".match /#{chorrin}/ # dog