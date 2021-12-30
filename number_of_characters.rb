print "Please write a word or multiple words: "
input = gets.chomp
input_array = input.split

counter = 0
input_array.each {|word| counter += word.length}

puts "There are #{counter} characters in \"#{input}\"."
