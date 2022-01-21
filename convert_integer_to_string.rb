# Write a method that converts an integer into a string, without using the built in to_s method

# **Problem**
# input integer, output is string
# **Algorithm**
# convert the integer into an array of each digit ex. 123 -> [1, 2, 3]
# iterate through the array 
# # using a case statement, append a string digit ex. 2 -> ('2') onto an output string
# return the output string

def integer_to_string(integer)
  integer_array = integer.digits.reverse
  output_string = ''

  integer_array.each do |digit|
    case digit
    when 0 then output_string << '0'
    when 1 then output_string << '1'
    when 2 then output_string << '2'
    when 3 then output_string << '3'
    when 4 then output_string << '4'
    when 5 then output_string << '5'
    when 6 then output_string << '6'
    when 7 then output_string << '7'
    when 8 then output_string << '8'
    when 9 then output_string << '9'
    end
  end
  output_string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
