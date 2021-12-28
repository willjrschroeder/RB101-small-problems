def calculate_bonus(salary, bonus)
  return salary / 2 if bonus
  0
end

# Refactored

def calculate_bonus_mk2(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus_mk2(2800, true) == 1400
puts calculate_bonus_mk2(1000, false) == 0
puts calculate_bonus_mk2(50000, true) == 25000
