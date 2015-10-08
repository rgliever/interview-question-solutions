# Ryan Gliever

# Given the head node of a linked list, returns true if there is a cycle in the list, and false otherwise.

class Node
  attr_accessor :val, :next
  def initialize(value, next_node)
    @val = value
    @next = next_node
  end
end

def contains_cycle(head)
  slow = head
  fast = head
  while !fast.nil? && !fast.next.nil? do
    slow = slow.next
    fast = fast.next.next
    return true if slow == head
  end
  return false
end

head = Node.new(1, nil)
head.next = Node.new(2, nil)
head.next.next = Node.new(3, nil)
head.next.next.next = head.next.next

puts contains_cycle(head)
