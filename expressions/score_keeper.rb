class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def average
    raise 'No scores' if @count.zero?

    Float(@total_score) / @count
  end
end

scores = ScoreKeeper.new
scores << 10 << 2 << 40

puts "Average = #{scores.average}"

puts ScoreKeeper.new.average
