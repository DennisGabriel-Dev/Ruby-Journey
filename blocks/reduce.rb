puts [1, 3, 5, 7].reduce(0) {|sum, element| sum + element} # 16, sum initialize in 0 
puts [1, 3, 5, 7].reduce(1) {|sum, element| sum * element} # 105, sum initialize in 1
puts '----------------------------------'

# reduce works without method too, in these cases, it defined 0 to sum and 1 to multiplication
puts [1, 3, 5, 7].reduce {|sum, element| sum + element} # 16
puts [1, 3, 5, 7].reduce {|sum, element| sum * element} # 105
puts '----------------------------------'

# simplify methods, Integers have mehtods + and *, it will work
puts [1, 3, 5, 7].reduce(:+) # 16
puts [1, 3, 5, 7].reduce(:*) # 105
puts '----------------------------------'

# or simplify more
puts [1, 3, 5, 7].sum #16
# puts [1, 3, 5, 7].product([2, 4, 6]) # ruby has a product method too, but it does something different, try yourself