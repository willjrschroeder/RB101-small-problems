def century(year)
  next_century = false
  hundredths = year / 100
  trailing_year_check = year / 100.0
  next_century = true unless hundredths == trailing_year_check

  if next_century
    century = hundredths += 1
  else
    century = hundredths
  end

  suffix = ""

  century = century.to_s
  last_digits = century[-2, 2]
  last_digit = century[-1]
  if century.size == 1
    case century
    when '1' then suffix = "st"
    when '2' then suffix = "nd"
    when '3' then suffix = "rd"
    else suffix = 'th'
    end
  elsif last_digits == '11' || last_digits == '12' || last_digits == '13'
    suffix = 'th'
  elsif last_digit == '1' || last_digit == '2' || last_digit == '3'
    case last_digit
    when '1' then suffix = "st"
    when '2' then suffix = "nd"
    when '3' then suffix = "rd"
    end
  else
    suffix = 'th'
  end

  "#{century}#{suffix}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
