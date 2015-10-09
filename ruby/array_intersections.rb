# Ryan Gliever

# Finds common elements of two given arrays by incrementing hash values for one array and decrementing for the other, pushing keys of the hash to an intersect array if the value for the key is 0 (same amount of key in both arrays). O(n) time and O(n) extra space.

def array_intersect(arrayA, arrayB)
  values_hash = Hash.new(0)
  arrayA.each do |valA|
    values_hash[valA] += 1
  end
  arrayB.each do |valB|
    values_hash[valB] -= 1
  end
  intersects = []
  values_hash.each do |key, val|
    intersects << key if values_hash[key] == 0
  end
  return intersects
end

A = ["A", "B", "D"]
B = ["B", "C", "A"]
puts array_intersect(A, B)

C = [1, 2, 3]
D = [4, 5, 2]
puts array_intersect(C, D)
