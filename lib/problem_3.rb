=begin
This problem was asked by Google.

Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

For example, given the following Node class

class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
The following test should pass:

node = Node('root', Node('left', Node('left.left')), Node('right'))
assert deserialize(serialize(node)).left.left.val == 'left.left'
=end

class Problem3
  class << self
    def serialize(node)
      return '*' if node.nil?
      "#{node.val} - #{serialize(node.left)} - #{serialize(node.right)}"
    end

    def deserialize(serialized_node)
      nodes_values = serialized_node.split(' - ')
      build_tree nodes_values
    end

    def build_tree(nodes_values)
      value = nodes_values.shift
      return nil if value == '*'
      node = Node.new(value)
      node.left = build_tree(nodes_values)
      node.right = build_tree(nodes_values)
      node
    end
  end

  class Node
    attr_accessor :val, :left, :right
    def initialize(val, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end
end
