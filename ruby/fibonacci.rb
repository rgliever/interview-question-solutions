# Ryan Gliever

# Calculates nth fibonacci number while storing values in an array to avoid recalculating the same fibonacci number.

$stored_values = [1, 1]
def fib(n)
  return $stored_values[n] if $stored_values[n]
  $stored_values[n] = fib(n-1) + fib(n-2)
end

puts fib(5)   # 8
puts fib(6)   $ 13
