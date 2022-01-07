# write a method that takes in an integer year and returns a boolean
# # returns true if the input is a leap year, false if not
# if the year is less than or equal to 1752, return true  if year is divisible by 4
# else, perfrom the below checks
# if the year is divisible by both 4 AND 100, check if the year is also divisible by 400
# # return true if it is, false if not
# else return true if the year is divisible by 4 

def leap_year?(year)
  if year <= 1752
    return true if year % 4 == 0
    false
  elsif year % 4 == 0 && year % 100 == 0
    return true if year % 400 == 0
    false
  else
    year % 4 == 0
  end
end 

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
