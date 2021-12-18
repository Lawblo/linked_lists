# frozen_string_literal: true

require_relative 'node'

# linked lists
class LinkedList
  attr_reader(:head)

  def initialize
    @head = Node.new
  end

  # adds a new node containing value to the end of the list
  def append(value)
    node = head
    node = node.next_node until node.next_node.nil?
    node.next_node = Node.new(value)
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    temp = head.next_node
    head.next_node = Node.new(value)
    head.next_node.next_node = temp
  end

  # returns the total number of nodes in the list
  def size
    node = head
    node_amt = 0
    until node.next_node.nil?
      node_amt += 1
      node = node.next_node
    end
    node_amt
  end

  # returns the first node in the list
  def first
    head.next_node
  end

  # returns the last node in the list
  def tail
    node = head
    node = node.next_node until node.next_node.nil?
    node
  end

  # returns the node at the given index
  def at(index)
    node = head.next_node
    node_index = 0
    until node_index == index || !node
      node = node.next_node
      node_index += 1
    end
    node || nil
  end

  # removes the last element from the list
  def pop
    node = head
    node = node.next_node until node.next_node.next_node.nil?
    node.next_node = nil
  end

  # returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value)
    found_value = false
    node = head
    until found_value || !node
      found_value = true if node.value == value
      node = node.next_node
    end
    found_value
  end

  # returns the index of the node containing value, or nil if not found.
  def find(value)
    node = head.next_node
    found_index = 0
    while node
      return found_index if node.value == value

      found_index += 1
      node = node.next_node
    end
    nil
  end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s; end

  # inserts a new node with the provided value at the given index.
  def insert_at(value, index) end

  # removes the node at the given index.
  def remove_at(index) end
end
