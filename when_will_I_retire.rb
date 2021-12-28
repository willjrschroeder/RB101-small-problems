t = Time.now

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

working_years_left = retirement_age - age

puts "It is #{t.year}. You will retire in #{t.year + working_years_left}."
puts "You only have #{working_years_left} years of work left to go!"
