def custom_regex(text, pattern)
  match = text.match(pattern)
  puts "#{match.pre_match} ->#{match[0]}<-#{match[1]}"
end

custom_regex('He said "Hello"', /(\w)\1/)
custom_regex("Mississippi", /(\w+)\1/)

str = 'He said "Hello"'
custom_regex(str, /(?<char>\w)\k<char>/)
str = "Mississippi"
custom_regex(str, /(?<seq>\w+)\k<seq>/)

/(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am" # hour and min are new variables
puts "Hour is #{hour}, minute #{min}"

md = /(?<hour>\d\d):(?<min>\d\d)(..)/.match("12:50am") # this is same way showed above case
puts "Hour is #{md[:hour]}, minute #{md[:min]}"

# OUTPUT
# He said "He ->ll<-l
# M ->ississ<-iss
# He said "He ->ll<-l
# M ->ississ<-iss
# Hour is 12, minute 50
# Hour is 12, minute 50
