class InfiniteStream
  def all
    Enumerator.produce(0) do |number|
      number += 1
    end.lazy
  end
end

p InfiniteStream.new.all.first(10)

p InfiniteStream.new.all
  .select{ ( _1 % 3).zero? }
  .first(10)


def palindrome?(n)
  n = n.to_s
  n == n.reverse
end  
p InfiniteStream.new.all
  .select{ (_1 % 3).zero? }
  .select { palindrome?(_1)}
  .first(10)


multiple_of_three = -> n { (n % 3).zero? }
palindrome = -> n { n = n.to_s; n == n.reverse}

p InfiniteStream.new.all
  .select(&multiple_of_three)
  .select(&palindrome)
  .first(10)