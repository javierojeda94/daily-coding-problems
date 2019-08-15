require 'problem_1'

RSpec.describe Problem1 do
  context 'with naive solution' do
    it 'should be true with [10, 15, 3, 7] and 17' do
      numbers = [10, 15, 3, 7]
      k = 17
      expect(Problem1.solve(numbers, k)).to be true
    end
  
    it 'should be true with [1, 2, 3, 4, 5] and 8' do
      numbers = [1, 2, 3, 4, 5]
      k = 8
      expect(Problem1.solve(numbers, k)).to be true
    end
  
    it 'should be false with [1, 2, 3, 4, 5] and 10' do
      numbers = [1, 2, 3, 4, 5]
      k = 10
      expect(Problem1.solve(numbers, k)).to be false
    end
  end

  context 'with bonus solution' do
    it 'should be true with [10, 15, 3, 7] and 17' do
      numbers = [10, 15, 3, 7]
      k = 17
      expect(Problem1.solve_bonus(numbers, k)).to be true
    end
  
    it 'should be true with [1, 2, 3, 4, 5] and 8' do
      numbers = [1, 2, 3, 4, 5]
      k = 8
      expect(Problem1.solve_bonus(numbers, k)).to be true
    end
  
    it 'should be false with [1, 2, 3, 4, 5] and 10' do
      numbers = [1, 2, 3, 4, 5]
      k = 10
      expect(Problem1.solve_bonus(numbers, k)).to be false
    end
  end
end