=begin
Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

You can modify the input array in-place.
=end

class Problem4
  class << self
    def solve(numbers)
      size = numbers.count
      min_number = 1
      (1).upto(size) do |num|
        unless numbers.include?(num)
          min_number = num
          break
        end
      end
      min_number
    end
  end
end