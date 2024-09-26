class List
  def initialize(*values)
    @list = values
  end

  def +(other)
    @list.push(other)
  end

  def to_s
    @list
  end
end

list = List.new(1, 2)
list += 3

puts list # [1, 2, 3]
