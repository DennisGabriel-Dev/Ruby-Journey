file = File.open('./ordinal.txt', 'r')
while line = file.gets
  puts(line) if line =~ /third/ .. line =~ /sixth/
end
puts "==================="

File.foreach("./ordinal.txt") do |line|
  if(($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
    print line
  end
end
print "\n"
puts "==================="

array = %w( first second third fourth fifth)
array.each do
  puts _1 if _1 =~ /third/ .. _1 =~ /fifth/
end
