# Write a method that takes a String of digits, and returns the appropriate number as an integer.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, 
# such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the 
# result by analyzing the characters in the string.


# **Problem**
  # Turn a string of digits into an integer
  # Input: String of digits
  # Output: Integer
  # I can assume that all characters of the string will be numeric

# **Data Structures**
  # String and Integer

# **Algorithm**
  # Create an array of valid digits in string form, 0-9 as a global variable
  # Create an output integer

  # Find the positions of each character with the find_positions method
  
  # Convert the digit positions array to an integer with the convert_array helper method

  # Return the output integer


  # find_positions -> Returns an array with the index of each digit in the positions array
  # Create a positions array to return
  # # Break the string into individual characters and iterate over them
  # # Check to see which digit each character corresponds to
  # # Store the position of each character in the digits array to the positions array

  # convert_array_to_integer -> Returns an integer from an array of the digits of the integer in order
  # Initialize an empty integer to return
  # Set a variable number_of_digits to the size of the positions array
  # Convert each digit in the positions array to the corresponding 10s, 100s, etc place in an integer and add it to the output integer


  VALID_DIGITS = ("0".."9").to_a

def find_positions(string)
  positions = []
  string.chars do |char|
    positions << VALID_DIGITS.index(char)
  end
  positions
end

def convert_array_to_integer(array)
  return_integer = 0
  number_of_digits = array.size
  array_position = array.size - 1

  number_of_digits.times do |x|
    return_integer += (10**x) * array[array_position]
    array_position -= 1
  end
  return_integer
end

def string_to_integer(string)
  output_integer = 0
  digit_positions = find_positions(string)
  convert_array_to_integer(digit_positions)
end

def string_to_signed_integer(string)
  if string.include?('+')
    string.delete_prefix!('+') # Cut off first letter
  elsif string.include?('-')
    string.delete_prefix!('-') # cut off first letter
    negative = true
  end
  output_integer = string_to_integer(string)
  output_integer = output_integer * -1 if negative
  output_integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('5700') == 5700
p string_to_integer('87291001') == 87291001
p string_to_integer('0057') == 57
