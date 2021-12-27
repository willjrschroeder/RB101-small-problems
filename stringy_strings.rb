def binary_printer(length, zero_based = 1)
  output = ''
  counter = 0
  if zero_based == 1
    output << '1' unless length == 0
  elsif zero_based == 0
    output << '0' unless length == 0
  end
  while counter < length - 1
    if output[counter] == '1'
      output << '0'
    else
      output << '1'
    end
    counter += 1
  end
  output
end

# Refactored solution

def binary_printer_mk2(length)
  numbers = []
  length.times do |index|
    if index.even?
      numbers << '1'
    else
      numbers << '0'
    end
  end
  numbers.join
end

puts binary_printer_mk2(3)
puts binary_printer_mk2(0)
puts binary_printer(5, 0)
