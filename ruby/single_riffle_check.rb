# Ryan Gliever

# Given a shuffled deck of cards and two halves of a deck (where the number of cards in each is not necessarily equal),
# returns true if the shuffled deck is a single riffle of the two halves, and false otherwise.
# Iterates the shuffled deck and compares the card to the top card of each half, calling recursively with the matched 
# cards discarded until there is no match (false) or shuffled deck is empty (true).
# Runs in O(n) time where n is the size of the shuffled deck array.

def is_single_riffle(shuffled, half1, half2)
  return true if shuffled.length == 0
  if half1.length > 0 and half1[0] == shuffled[0]
    return is_single_riffle(shuffled[1..shuffled.length-1], half1[1..half1.length-1], half2)
  elsif half2.length > 0 and half2[0] == shuffled[0]
    return is_single_riffle(shuffled[1..shuffled.length-1], half1, half2[1..half2.length-1])
  else
    return false
  end
end

half1 = [4, 6, 8]
half2 = [5, 9, 12, 23]
shuffled = [4, 5, 9, 6, 8, 12, 23]
puts is_single_riffle(shuffled, half1, half2)
