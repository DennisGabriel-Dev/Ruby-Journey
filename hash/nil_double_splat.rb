# **nil indicate that the method does not accept any keyword arguments. 
def do_something(**nil)
  call(**nil)
end

def call(**arg)
  puts arg
end

do_something(color: "red") # no keywords accepted (ArgumentError)