puts "cat or dog".match? %r{cat} # true
# is the same result below
puts "cat or dog".match? /cat/ # true

chorrin = "dog"
# I can pass a variable into %r{} or //
puts "dog or cat".match? %r{#{chorrin}} # true

# method without ? return the word match
puts "dog or cat".match /#{chorrin}/ # dog


puts /cat/ =~ "dog and cat" # 8
puts /cat/ =~ "catch" # 0
puts /cat/ =~ "Cat" # nil

# or invert position them, this produce the same result
 puts "dog and cat" =~ /cat/ # 8 
 puts "catch" =~ /cat/ # 0
 puts "Cat" =~ /cat/ # nil