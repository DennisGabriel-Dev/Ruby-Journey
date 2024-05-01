# https://leetcode.com/problems/two-sum/description/
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    complement = target - num
    if hash.key?(complement)
      return [hash[complement], index]
    end
    hash[num] = index
  end
  []
end

p two_sum([3,2,3], 6)