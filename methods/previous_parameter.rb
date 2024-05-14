def surround(word, pad_width= word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("Dennis")
puts surround("Dennis", 5)