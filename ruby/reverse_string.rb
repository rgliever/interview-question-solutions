# Ryan Gliever

# Reverses a string in place in O(n) time and O(1) space.

def reverse_string(string)
  string_array = string.split('')
  i = 0
  j = string_array.length-1
  while i < j do
    tmp = string_array[i]
    string_array[i] = string_array[j]
    string_array[j] = tmp
    i += 1
    j -= 1
  end
  return string_array.join('')
end

puts reverse_string("my string")
