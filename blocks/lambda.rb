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