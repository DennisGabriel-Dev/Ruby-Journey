def varargs(arg1, **rest)
  puts "arg1=#{arg1}, rest=#{rest.inspect}"
end

varargs("one", color: "red", size: "xl") # arg1=one, rest={:color=>"red", :size=>"xl"}