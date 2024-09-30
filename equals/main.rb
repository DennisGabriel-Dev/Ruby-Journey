puts 1 == 1.0 # true
# for .eql? be True is necessary both objects be the same type
puts 1.eql? 1.0 # false

# .equal? consider the object ID, for strings this will be not work
puts 1.equal? 1 # true
puts "Dennis".equal? "Dennis" # false

# === is more useful in matches, for example in case...when
puts 1 === 1 # true

# in <=> method, case first object less than second, will returns -1, case equal returns 0, case bigger returns 1
puts  1 <=> 2 # -1
