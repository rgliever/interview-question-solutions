# Ryan Gliever

# Given two eggs and floors of a building 1-100, returns the highest floor possible that a dropped egg won't break
# (assuming we do not know the lowest floor that the egg will break when dropped).
# Iterates through each floor starting at n = 14 and recursively calls itself with n + (n-1) + (n-2) ...
# When the first egg breaks, the algorithm reverts back to the previous safe floor, and increments by one until the egg
# breaks, at which point we return the previous floor as the highest floor an egg can be dropped without breaking.

$highest_floor = 52

def find_highest_floor(eggs=2, n=14, mod=0, floor_num=14)
  if eggs > 1
    if floor_num <= $highest_floor
      mod += 1
      return find_highest_floor(eggs, n, mod, floor_num + (n-mod))
    else
      eggs -= 1
      return find_highest_floor(eggs, n, mod, floor_num - (n-mod))
    end
  else
    if floor_num <= $highest_floor
      return find_highest_floor(eggs, n, mod, floor_num + 1)
    else
      return floor_num - 1
    end
  end    
end

puts find_highest_floor   # 52
