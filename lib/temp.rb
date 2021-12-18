# frozen_string_literal: true

require_relative 'linked_list'
#require_relative 'node'

a = LinkedList.new

(0..3).each {|i| a.append(i) }
p a

a.pop

p a

p a.find(2)
