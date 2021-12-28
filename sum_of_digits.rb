def sum_of_digits(int)
  sum = 0
  int.to_s.chars.each do |char|
    sum += char.to_i
  end
  sum
end

# Refactored solution

def sum_of_digits_mk2(int)
  int.to_s.chars.map(&:to_i).sum
end

puts sum_of_digits_mk2(23) == 5
puts sum_of_digits_mk2(496) == 19
puts sum_of_digits_mk2(123_456_789) == 45
