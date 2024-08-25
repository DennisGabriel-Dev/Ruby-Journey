a = b = 1 + 2 + 3
puts a # 6
puts b # 6

a = (b = 1 + 2) + 3
puts a # 6
puts b # 3

7 => x
puts x # 7

# parallel assignment

a, b = 1, 2
a, b = b, a
printf "a: %s\n", a
printf "b: %s\n", b
