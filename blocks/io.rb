file = File.open("input.txt")

# each.with_index , map.with_index, find.with_index => this will provider indexes for iterator

file.each_with_index do |line, i|
  puts "#{i + 1}. #{line}"
end

file.close