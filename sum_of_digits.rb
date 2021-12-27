def sum_of_digits(int)
  sum = 0
  int.to_s.chars.each do |char|
    sum += char.to_i
  end
  sum
end

puts sum_of_digits(23) == 5
puts sum_of_digits(496) == 19
puts sum_of_digits(123_456_789) == 45
