require 'problem_4'

RSpec.describe Problem4 do
  it 'should return 3 with input [1, 2, 0]' do 
    expect(Problem4.solve([1, 2, 0])).to eq(3)
  end

  it 'should return 2 with input [3, 4, -1, 1]' do 
    expect(Problem4.solve([3, 4, -1, 1])).to eq(2)
  end
end