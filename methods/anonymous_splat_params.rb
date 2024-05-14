class Example
  def method_1(*)
    method_2(*)
  end

  def method_2(*array_args)
    array_args.join(',')
  end
end

p Example.new.method_1('dennis', 14, 'lindo') # "dennis,14,lindo"

a, *b, c = 1,2,3,4,5 
p a # 1
p b # [2,3,4]
p c # 5