# Interact in two arrays
[[1, 2],[3, 4]].each {|first, second| p first, second}

# ruby provides _1, _2, _3 ... these examples depends of the count of parameters
# this will be produce same result above case it
[[1, 2],[3, 4]].each { p _1, _2} 