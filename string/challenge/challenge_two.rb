# this is other version of the challenge.rb
Song = Struct.new(:new, :name, :length)

songs = File.readlines("./file.txt", chomp: true).map do |line|
  _file, length, name, title = line.chomp.split(/\s*\|\s*/)
  minutes, seconds = length.scan(/\d+/)
  Song.new(title, name.squeeze(" "), minutes.to_i * 60 + seconds.to_i)
end

puts songs[1]
