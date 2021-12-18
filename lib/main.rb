# frozen_string_literal: true

require_relative 'linked_list'
#require_relative 'node'

a = LinkedList.new

(1..3).each {|i| a.append(i) }

a.remove_at(1)

p a
