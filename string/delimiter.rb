# %q is equivalent a single-quote '', isn't a typo
puts %q/general single-quoted string/ # => general single-quoted string
# %Q is equivalent a double-quote "", but Q is optional
puts %Q{this is a String!} # => this is a String!
puts %;Yups, this is a string too; #=> Yups, this is a string too
