
def string_reverser(original_string)
  original_array = original_string.split
  reversed_string = ""

  original_array.each do |word|
    reversed_string.prepend(word, " ")
  end
  reversed_string
end

puts string_reverser("Hello World")
puts string_reverser("Hello my name is Will")
puts string_reverser("       ") == ""
