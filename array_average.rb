def array_averager(array)
  total = 0
  array.each do |num|
    total += num
  end
  total / array.size
end

puts array_averager([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts array_averager([1, 5, 87, 45, 8, 8]) == 25
puts array_averager([9, 47, 23, 95, 16, 52]) == 40
