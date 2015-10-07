# Ryan Gliever

# Finds the id without a duplicate in an array of duplicate ids.

def find_unique_id(ids)
  i = 0
  ids.each do |id|
    i ^= id
  end
  return i
end

ids = [0, 1, 0, 5, 1, 5, 6, 3, 3]
puts find_unique_id(ids)
