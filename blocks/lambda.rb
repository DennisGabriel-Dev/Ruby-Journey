def my_while(cond, &block)
  while cond.call
    block.call
  end
end
a = 0
my_while -> {a < 5} do
  puts "#{a}"
  a += 1
end


def my_if(condition, if_clause, else_clause)
  if condition
    if_clause.call
  else
    else_clause.call
  end
end

5.times do |i|
  my_if( i < 2,
    -> {puts"#{i} is small"},
    -> {puts "#{i} is big"})
end


puts "------------------"
proc1 = lambda do |a, *b, &block|
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end

proc1.call(1, 2, 3, 4) {puts "in block 1"}
=begin
a = 1
b = [2, 3, 4]
in block 1
=end
puts "------------------"
proc2 = -> (a, *b, &block) do
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end

proc2.call(1, 2, 3, 4, 5, 6) {puts "in block 2"}