answer = 0

print "Please enter a positive integer: "
roof = gets.chomp.to_i

print "Enter 's' to compute the sum, or enter 'p' to compute the product: "
sum_or_product = gets.chomp.downcase

if sum_or_product == 's'
  answer = (1..roof).inject(:+)
  puts "The sum of all integers between 1 and #{roof} is #{answer}."
elsif sum_or_product == 'p'
  answer = (1..roof).inject(:*)
  puts "The product of all integers between 1 and #{roof} is #{answer}."
end
