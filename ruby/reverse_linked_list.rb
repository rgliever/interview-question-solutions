# Ryan Gliever

# Reverses a singly linked list in place in O(n) time and O(1) space.

class Node
  attr_accessor :val, :next
  
  def initialize(value, next_node)
    @val = value
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head
  
  # Creates a LinkedList given an array of values
  def initialize(list_of_values)
    list_of_values.each_with_index do |value, index|
      if index == 0
        @head = Node.new(value, nil)
        @curr = @head
      else
        @curr.next = Node.new(value, nil)
        @curr = @curr.next
      end
    end
  end

  # Prints the LinkedList
  def print_list()
    curr = self.head
    until curr.nil? do
      print "#{curr.val} -> "
      curr = curr.next
    end
    puts ""
    return self
  end

  def reverse_list!
    prev = nil
    next_node = nil
    while !self.head.nil? do
      next_node = self.head.next
      self.head.next = prev
      prev = self.head
      self.head = next_node
    end
    self.head = prev
  end
end

list = LinkedList.new([1, 2, 3, 4, 5, 6])
list.print_list
list.reverse_list!
list.print_list

