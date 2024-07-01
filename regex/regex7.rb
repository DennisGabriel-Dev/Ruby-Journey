require './regex6.rb'

puts "six o'clock".gsub(/\b/, '*') # *six* *o*'*clock*
puts "six o'clock".gsub(/\B/, "*") # s*i*x o'c*l*o*c*k
# the \b anchor matches a word boundary(the separation between a word character)

puts show_regex("this is\nthe time", /\bis/) # this ->is<-\nthe time
puts show_regex("this is\nthe time", /\Bis/) # th->is<- is\nthe time
