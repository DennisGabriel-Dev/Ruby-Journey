short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum

# the loop iterates both arrays in parallel and ends without null pointer exception :)
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

enum = 'cat'.each_char # transform in a enum, enum is a object
puts enum.to_a.inspect # ["c", "a", "t"]

enum2 = (1..10).enum_for(:reverse_each)
puts enum2.next #10


enum_in_threes = (1..10).enum_for(:each_slice, 3)
puts enum_in_threes.to_a.inspect
