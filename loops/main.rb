PlayList = Struct.new(:duration)

play_list = PlayList.new
play_list.duration = 15

puts "Until"
until play_list.duration > 60
  puts "Duration: #{play_list.duration}"
  play_list.duration += 3
end
puts "end Until"

a = 1
a *=2 while a < 100
puts a

a -= 10 until a < 100
puts a
