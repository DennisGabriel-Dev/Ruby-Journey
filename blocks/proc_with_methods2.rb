print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
method = number.method(operator.start_with?("t") ? :* : :+ )

puts (1..10).map(&method).join(", ")