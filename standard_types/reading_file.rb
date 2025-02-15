some_file = File.read("file.txt")

some_file.split("\n").each do |line|
	v1, v2 = line.split
	print Integer(v1) + Integer(v2), " "
  print "\n",Float(v1) + 0.5,Float(v2), " "
end
