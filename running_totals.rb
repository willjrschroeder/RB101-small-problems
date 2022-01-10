# Write a method that takes an Array of numbers, and returns an Array with the same 
# number of elements, and each element has the running total from the original Array.

# **Problem**
# Take in an array and output a new array with the same number of elements. Each element in the new array should be a running total 
# of all the previous elements 
# input: Array
# output: Array

# **Data Structures**
# Array 

# **Algorithm**
# Write a method that takes in an array parameter
# Establish an output array
# Iterate through original array 
# # Push the sum of the previous element of the new array and the current element of the original array 

# Return an output array

def running_total(array)
  return [] if array.empty?
  running_total_array = [array[0]]
  array.each_with_index do |element, index|
    next if index == 0
    running_total_array.push(running_total_array[index - 1] + element)
  end
  running_total_array
end

def running_total_2(array)
  sum = 0
  array.map {|element| sum += element}
end

def running_total_3(array)
  sum = 0
  running_total_array = array.each_with_object([]) do |element, a|
    sum += element
    a << sum
  end
end

def running_total_4(array)
  sum = 0
  running_total_array = array.inject([]) do |array, element|
    array << sum += element
  end
  running_total_array
end

p running_total_4([2, 5, 13]) == [2, 7, 20]
p running_total_4([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_4([3]) == [3]
p running_total_4([]) == []

