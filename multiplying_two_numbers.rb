def multiply(a,b)
  a * b
end

def power_to_the_n(num, power)
  return 1 if power == 0
  return num if power == 1

  answer = num
  (power - 1).times do
    answer = multiply(answer, num)
  end
  answer
end

puts multiply(5, 3)
puts power_to_the_n(5, 2)
puts power_to_the_n(-8, 3)
puts power_to_the_n(-2, 8)
