def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each do |word|
    counts[word] += 1
  end
  counts
end
