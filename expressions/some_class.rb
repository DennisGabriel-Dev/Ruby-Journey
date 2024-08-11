class SomeClass
  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(',')}"
    puts "Value = #{value.inspect}"
  end
end

s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies'
