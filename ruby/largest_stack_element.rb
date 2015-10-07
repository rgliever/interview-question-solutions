# Ryan Gliever

# Stores the largest max stack element at each level of the stack in array max_values, and retrieves it with the function get_max in O(1) time. Extra space is O(n) where n is the number of operations on the stack.

class Stack
  attr_accessor :items, :max_values
  
  def initialize
    self.items = []
    self.max_values = []
  end
  
  def push(item)
    self.items << item
    if self.max_values.empty? || item > self.max_values[self.max_values.length-1]
      self.max_values << item
    else
      self.max_values << self.max_values[self.max_values.length-1]
    end
  end
  
  def pop
    return nil if self.items.empty?
    self.max_values.pop
    return self.items.pop
  end
  
  def peek
    return nil if self.items.empty?
    return self.items[items.length-1]
  end
  
  def get_max
    return nil if self.max_values.empty?
    return self.max_values[self.max_values.length-1]
  end
end

stack = Stack.new
stack.push(2)
stack.push(3)
stack.push(1)
stack.push(4)
puts stack.get_max  # 4
stack.push(6)
puts stack.get_max  # 6
stack.pop
stack.pop
puts stack.get_max  # 3
