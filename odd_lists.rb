# create a method that takes an array as input
# # returns an array of every other element
# initialize a return array
# loop through the passed in array, accessing each index with a counter
# if the counter is even, push the element onto a new array 

def oddities(array)
  output_array = []

  array.each_with_index do |value, index|
    output_array << value if index % 2 == 0
  end
  output_array
end

def oddities_2(array)
  counter = 0
  output_array = []

  loop do
    break unless counter < array.size
    output_array.push(array[counter])
    counter += 2
  end
  output_array
end

p oddities_2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities_2(['abc', 'def']) == ['abc']
p oddities_2([123]) == [123]
p oddities_2([]) == []
