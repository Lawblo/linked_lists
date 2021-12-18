# frozen_string_literal: true

# nodes in the linked list
class Node
  attr_accessor(:value, :next_node)

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_string
    value.to_s
  end
end
