# The time of day can be represented as the number of minutes 
# before or after midnight. If the number of minutes is positive, 
# the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your method 
# should work with any integer input.

def time_of_day(raw_minutes)
  number_of_hours, number_of_minutes = raw_minutes.divmod(60)
  if number_of_hours > 23
    number_of_hours = number_of_hours % 24
  elsif number_of_hours < -24
    number_of_hours = number_of_hours % -24
  end

  if raw_minutes < 0
    output_hours = 24 + number_of_hours
  else
    output_hours = number_of_hours
  end
  output_hours = "0#{output_hours}" if output_hours < 10
  number_of_minutes = "0#{number_of_minutes}" if number_of_minutes < 10
  
  output_time = "#{output_hours}:#{number_of_minutes}"
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"

# As seen in the previous exercise, the time of day can be represented as the 
#number of minutes before or after midnight. If the number of minutes is positive, 
#the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the 
#number of minutes before and after midnight, respectively. Both methods should return 
#a value in the range 0..1439.

def time_string_to_hours_and_minutes(time_string)
  hours_string, minutes_string = time_string.split(":")
  hours_and_minutes = [hours_string.to_i, minutes_string.to_i]
end

def after_midnight(time_string)
  hours, minutes = time_string_to_hours_and_minutes(time_string)
  total_minutes = hours * 60 + minutes
  return 0 if total_minutes == 1440
  total_minutes
end

def before_midnight(time_string)
  hours, minutes = time_string_to_hours_and_minutes(time_string)
  total_minutes = hours * 60 + minutes
  return 0 if total_minutes == 0
  1440 - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
