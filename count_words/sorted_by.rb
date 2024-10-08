require_relative "count_words"

raw_text = "The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count."

word_list = words_from_string(raw_text)
frequency = count_frequency(word_list)
sorted = frequency.sort_by { |word, count| count }
top_ten = sorted.last(10)

top_ten.reverse_each do |word, count|
  puts "#{word} : #{count}"
end

puts "Tally:"
puts word_list.tally
