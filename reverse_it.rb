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

def word_reverser(string)
  output_str = ""
  words_array = string.split
  return words_array[0].reverse if words_array.length == 1 && words_array[0].length >= 5
  return words_array[0] if words_array.length == 1

  words_array.each do |word|
    if word.length >= 5
      output_str << word.reverse + " "
    else
      output_str << word + " "
    end
  end
  output_str
end

# Refactored word_reverser method

def word_reverser_mk2(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end
  words.join(" ")
end

puts word_reverser("TESTER")
puts word_reverser("Hello my name is William")
