print "Type a name: "
word = gets.chomp
word_in_error = catch (:invalid_input) do
  throw(:invalid_input, word) unless word =~ /^\w+$/
  puts word
end

if word_in_error
  puts "Failed: #{word_in_error} found, but a word was expected"
end


# if a commom word is typed, the program doesn't capture an error
# but, if you type "**" for example, the program's print: Failed: ** found, but a word was expected
