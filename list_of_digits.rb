def list_of_digits(int)
  str = int.to_s
  list = []
  counter = 0

  while counter < str.length
    list.push(str[counter].to_i)
    counter += 1
  end
  list
end

# Idiosyncratic solution
# def list_of_digits(int)
#   int.to_s.chars.map(&:to_i)
# end

p list_of_digits(123)
p list_of_digits(001)
p list_of_digits(-21)
p list_of_digits(0)
