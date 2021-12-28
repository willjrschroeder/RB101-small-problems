print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  name.upcase!.chop!
  puts "HELLO #{name}. WHY ARE WE YELLING?"
else
  puts "Hello #{name}."
end
