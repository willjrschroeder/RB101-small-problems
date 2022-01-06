# write a method that takes in two booleans
# # returns a boolean
# if boolean 1 == boolean 2, return false
# if boolean 1 is not equal to boolean 2, return true

def xor?(boolean_1, boolean_2)
  boolean_1 != boolean_2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
