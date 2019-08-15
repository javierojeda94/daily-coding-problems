require 'problem_2'

RSpec.describe Problem2 do
  it 'should return [120, 60, 40, 30, 24] for [1, 2, 3, 4, 5]' do
    input = [1, 2, 3, 4, 5]
    output = [120, 60, 40, 30, 24]
    expect(Problem2.solve input).to eq output
  end

  it 'should return [2, 3, 6] for [3, 2, 1]' do
    input = [3, 2, 1]
    output = [2, 3, 6]
    expect(Problem2.solve input).to eq output
  end
end