class Thing
  def do_something(&)
    do_something_else(&)
  end 
  
  def do_something_else(&block)
     block.call
  end
end

Thing.new.do_something{puts "1 + 2"}

class Thing2
  def do_something(...) # permit everything
    do_something_else(...)
  end

  def do_something_else(...)
     p(...)
  end
end

Thing2.new.do_something([1,2,3], red: true)