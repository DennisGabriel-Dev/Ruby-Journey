def separetor = puts "==============="
0.upto(9) do |x|
  print x, ' '
end
print "\n"
separetor


0.step(12, 3) do |x|
  print x, ' '
end
print "\n"
separetor

for number in File.open('./ordinal.txt', 'r') do
  print number
end
print "\n"
separetor
for i in ['fee', 'fi', 'fo', 'fum']
  print i, " "
end

for i in 1..3
  print i, " "
end

for i in File.open("ordinal.txt").find_all { |line| line =~ /d$/ }
  print i.chomp, " "
end


separetor

class Periods
  def each
    yield "Classical"
    yield "Jazz"
    yield "Rock"
  end
end

periods = Periods.new

for genre in periods
  print genre, " "
end
# same result produced by code above
periods.each { print _1, " " }
