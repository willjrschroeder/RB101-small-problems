# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not 
# the 6th number appears amongst the first 5 numbers.

def number?(num)
  return true if num.to_i.to_s == num || num.to_f.to_s == num
  false
end

numbers = []
number = 0
number_6 = 0

5.times do |i|
  loop do
    print "Please enter number #{i + 1}: "
    number = gets.chomp
    break if number?(number)
    puts "Error! Please enter a valid number!"
  end
  numbers.push(number)
end

print "Please enter number 6: "
loop do
  number_6 = gets.chomp
  break if number?(number_6)
  puts "Error! Please enter a valid number"
end

if numbers.include?(number_6)
  puts "#{numbers} contains the number #{number_6}."
else
  puts "#{numbers} does not contain the number #{number_6}."
end
