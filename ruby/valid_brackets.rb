# Ryan Gliever

# Function which returns true if the given string's brackets are properly nested, and false otherwise.

def valid_brackets(input)
  validator_hash = {
    ')' => '(',
    ']' => '[',
    '}' => '{'
  }
  bracket_stack = []
  input.split('').each do |b|
    case b
      when '(', '{', '[' then
        bracket_stack << b
      when ')', '}', ']' then
        if bracket_stack.pop != validator_hash[b]
          return false
        end
    end
  end
  return bracket_stack.empty? ? true : false
end

puts valid_brackets("({[{]{}})") # false
puts valid_brackets("[(){}[]]")	 # true
