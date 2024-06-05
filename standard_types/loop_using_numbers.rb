3.times { print "X", " " }
1.upto(5) { print _1, " " }
99.downto(95) { print _1, " " }
50.step(80,5) { print _1, " " }
puts "\n"
10.downto(7).with_index {|num, index| puts "#{index}: #{num}"}