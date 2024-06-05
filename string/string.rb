# encoding: utf-8
class String
  puts 'escape using "\\"' # => escape using "\"
  puts 'That\'s right' # => That's right

  puts "Seconds/day: #{24 * 60 * 60}" # => Seconds/day: 86400
  puts "#{'Ho ' * 3}Merry Christmas!" # => Ho Ho Ho Merry Christmas!

  puts "the " "dennis " "programmer!" # => the dennis programmer!
  # This will be show the encoding
  puts __ENCODING__ # => UTF-8
  puts "dennis".encoding # => UTF-8
end
