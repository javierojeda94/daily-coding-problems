=begin
This problem was recently asked by Google.

Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?   
=end
class Problem1
  class << self
    def solve(numbers, k)
      numbers[0..-2].each_with_index do |n1, idx1|
        numbers[(idx1 + 1)..-1].each do |n2|
          return true if n1 + n2 == k
        end
      end
      false
    end

    def solve_bonus(numbers, k)
      numbers.each_with_index do |number, idx|
        return true if numbers[idx + 1..-1].include? (k - number)
      end
      false
    end
  end
end
