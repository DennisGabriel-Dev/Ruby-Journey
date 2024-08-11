puts "======== Using =~ ========="
/(\d\d):(\d\d)(..)/ =~ "12:50am"
puts "Hour is #{Regexp.last_match(1)}, minute #{Regexp.last_match(2)}"
/((\d\d):(\d\d))(..)/ =~ "12:50am"
puts "Time is #{Regexp.last_match(1)}"
puts "Hour is #{Regexp.last_match(2)}, minute is #{Regexp.last_match(3)}"
puts "AM/PM is #{Regexp.last_match(4)}"

puts "==== Using match =========="

md = /(\d\d):(\d\d)(..)/.match("12:50am")
puts "Hour is #{md[1]}, minute #{md[2]}"
md = /((\d\d):(\d\d))(..)/.match("12:50am")
puts "Time is #{md[1]}"
puts "Hour is #{md[2]}, minute is #{md[3]}"
puts "AM/PM is #{md[4]}"

#
# OUTPUT
# ======== Using =~ =========
# Hour is 12, minute 50
# Time is 12:50
# Hour is 12, minute is 50
# AM/PM is am
# ==== Using match ==========
# Hour is 12, minute 50
# Time is 12:50
# Hour is 12, minute is 50
# AM/PM is am
#
