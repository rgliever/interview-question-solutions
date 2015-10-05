# Ryan Gliever

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
  
  # Returns the kth node from the end of the LinkedList
	def kth_to_last_node(k)
    curr = self.head
    kth_node_from_end = curr
    until curr.nil? do
      if k > 0
        k -= 1
      else
        kth_node_from_end = kth_node_from_end.next
      end
        curr = curr.next
    end
		return kth_node_from_end
	end
end

list = [2, 5, 3, 76, 20]
linked_list = LinkedList.new(list).print_list

puts linked_list.kth_to_last_node(4).val
