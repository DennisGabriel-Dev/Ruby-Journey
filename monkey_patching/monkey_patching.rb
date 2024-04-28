class Book 
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

class Book
  # this method is increment in first Book class
  def uppercase_title
    title.upcase
  end
end

b1 = Book.new("ruby book")
puts b1.uppercase_title