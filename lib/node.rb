# frozen_string_literal: true

require_relative 'linked_list'

# nodes in the linked list
class Node
  attr_accessor(:value, :next_node)

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
