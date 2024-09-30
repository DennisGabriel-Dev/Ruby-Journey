puts defined? 1 # "expression"
puts defined? printf # "method"
puts defined? "test" # "expression"
puts defined? Object # "constant"
puts defined? nil # "nil"
puts defined? some_func # nil
