print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
calc = operator.start_with?("t") ? -> (n) {n * number} : -> (n) {n + number}

puts (1..10).map(&calc).join(", ")