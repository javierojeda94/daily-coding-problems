require 'problem_3'

RSpec.describe Problem3 do
  let(:tree) {
    Problem3::Node.new('root', 
      Problem3::Node.new('left', 
        Problem3::Node.new('left.left')
      ), 
      Problem3::Node.new('right'))
  }
  
  let(:serialized_note) { 
    'root - left - left.left - * - * - * - right - * - *'
  }

  it 'should serialize correctly' do 
    expect(Problem3.serialize(tree)).to eq(serialized_note)
  end

  it 'should deserialize correctly' do
    deserialized_tree = Problem3.deserialize(serialized_note)
    expect(deserialized_tree.val).to eq('root')
    expect(deserialized_tree.left.val).to eq('left')
    expect(deserialized_tree.left.left.val).to eq('left.left')
    expect(deserialized_tree.right.val).to eq('right')
  end
end