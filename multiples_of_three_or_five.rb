require "pry"
# Write a method that searches for all multiples of 3 or 5 that 
# lie between 1 and some other number, and then computes the sum 
# of those multiples. For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# method that takes in an integer and returns an integer
# create an array to hold multiples of 3
# create an array to hold multiples of 5

# set current_multiple to 3
# iterate until current_multiple is greater than inputted integer
# # push current multiple to multiples of 3 array
# # add 3 to current_multiple

# set current_multiple to 5
# iterate until current_multiple is greater than inputted integer
# # push current_multiple to multiples of 5 array
# # add 5 to current_multiple

# combine the two arrays
# return the sum of the arrays

def multisum(limit)
  multiples_of_3 = []
  multiples_of_5 = []

  current_multiple = 3
  while current_multiple <= limit
    multiples_of_3 << current_multiple
    current_multiple += 3
  end

  current_multiple = 5
  while current_multiple <= limit
    multiples_of_5 << current_multiple
    current_multiple += 5
  end
 
  multiples = multiples_of_3 + multiples_of_5
  multiples.uniq!

  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
