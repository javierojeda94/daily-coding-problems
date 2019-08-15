require 'problem_5'

RSpec.describe Problem5 do
  it 'should return 3 whith car(cons(3, 4))' do
    expect(Problem5.car(Problem5.cons(3,4))).to eq(3)
  end

  it 'should return 4 with cdr(cons(3, 4))' do
    expect(Problem5.cdr(Problem5.cons(3,4))).to eq(4)
  end
end