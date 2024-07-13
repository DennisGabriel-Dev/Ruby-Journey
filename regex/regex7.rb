require_relative "regex6"

puts "six o'clock".gsub(/\b/, "*") # *six* *o*'*clock*
puts "six o'clock".gsub(/\B/, "*") # s*i*x o'c*l*o*c*k
# the \b anchor matches a word boundary(the separation between a word character)

puts show_regex("this is\nthe time", /\bis/) # this ->is<-\nthe time
puts show_regex("this is\nthe time", /\Bis/) # th->is<- is\nthe time

a = "The moon is made of cheese"
puts show_regex(a, /\w+/) # ->The<- moon is made of cheese
puts show_regex(a, /\s.*\s/) #  The-> moon is made of <-cheese
puts show_regex(a, /\s.*?\s/) #  The-> moon <-is made of cheese
puts show_regex(a, /[aeiou]{2,99}/) #  The m->oo<-n is made of cheese
puts show_regex(a, /mo??o/) #  The ->mo<-on is made of cheese
