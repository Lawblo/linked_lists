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
    Node.new(value)
  end

  # adds a new node containing value to the start of the list
  def prepend(value) end

  # returns the total number of nodes in the list
  def size; end

  # # returns the first node in the list
  # def head
  #   @head
  # end

  # returns the last node in the list
  def tail; end

  # returns the node at the given index
  def at(index) end

  # removes the last element from the list
  def pop; end

  # returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value) end

  # returns the index of the node containing value, or nil if not found.
  def find(value) end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s; end

  # inserts a new node with the provided value at the given index.
  def insert_at(value, index) end

  # removes the node at the given index.
  def remove_at(index) end
end