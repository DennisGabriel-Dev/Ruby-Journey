def say_hello_goodbye(name)
    result = "I don't know why you say goodbye, #{name}, I say hello"
    return result
end

puts say_hello_goodbye("John")
puts say_hello_goodbye("Paul")
puts say_hello_goodbye "Dennis"