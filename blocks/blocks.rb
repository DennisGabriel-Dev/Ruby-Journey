def greet(name, others= nil)
    yield(name, others)
end


greet("Dennis") { |name| p "Hello World #{name}"}
greet("Gabriel", "Rebeca") {p "Hello World #{_2}"}




def who_says_what
    yield("Dennis", "Good Afternoon!")
    yield("Gabriel", "Good Night!")
end

who_says_what {|name, phrase| puts "#{name} says #{phrase}"}


["cat", "dog", "horse"].each {|name| print name, " "}
5.times { print "*"}
3.upto(6) { |i| print i}
('a'..'e').each {|char| print char}
('a'..'e').each {print _1}