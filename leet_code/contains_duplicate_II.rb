# https://leetcode.com/problems/contains-duplicate-ii/
def contains_nearby_duplicate(nums, k)
  i = 0
  j = k
  hash = nums[i..j].tally
  make_condition = hash.values.any? { |v| v >= 2}
  return true if make_condition

  while j < nums.length do
    hash.delete(nums[i])
    j += 1
    i += 1
    if hash[nums[j]]
      return true
    else
      hash[nums[j]] = 1
    end
  end

  false
end

## TESTS

# nums = [1,2,3,1]
# k = 3
# puts contains_nearby_duplicate(nums,  k)

# nums = [1,0,1,1]
# k = 1
# puts contains_nearby_duplicate(nums,  k)

# nums = [1,2,3,1,2,3]
# k = 1
# puts contains_nearby_duplicate(nums,  k)

# nums = [99, 99]
# k = 2
# puts contains_nearby_duplicate(nums,  k)


# nums = [2, 2]
# k = 3
# puts contains_nearby_duplicate(nums,  k)
