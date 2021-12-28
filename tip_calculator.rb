puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage? (Ex. enter 20 for 20%)"
tip_rate = gets.chomp.to_f
tip = bill * tip_rate * 0.01

puts "The tip is $#{tip}"
puts "The total is $#{bill + tip}"
