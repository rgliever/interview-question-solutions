# Ryan Gliever

# Given a sorted array and an integer, returns true if the integer is in the array and false otherwise.
# Divide and conquer algorithm, runs in O(log n) time and O(1) space.

def check_array(array, num)
  if array.length > 2
    if num < array[0] or num > array[array.length-1]
      return false
    elsif num == array[0] \
      or num == array[array.length-1] \
      or num == array[((array.length-1)/2).floor]
      return true
    elsif num < array[((array.length-1)/2).floor]
      return check_array(array[0..((array.length-1)/2).floor-1], num)
    elsif num >= array[((array.length-1)/2).floor]
      return check_array(array[((array.length-1)/2).floor..array.length-1], num)
    end
  else
    return true if num == array[0] or num == array[1]
    return false
  end
end

array = [2, 3, 4, 7, 12, 20, 44, 56, 87, 92, 96]
puts check_array(array, 6)	# false
puts check_array(array, 21) # false
puts check_array(array, 87) # true
puts check_array(array, 20) # true
puts check_array(array, 3)	# true
