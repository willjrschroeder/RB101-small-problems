def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  string = string.downcase
  valid_chars = ("a")..("z")
  new_string = ""

  string.chars do |char|
    if valid_chars.include?(char)
      new_string << char
    end
  end
  palindrome?(new_string)
end

def real_palindrome_2?(string)
  string = string.downcase.delete("^a-z0-9")
  palindrome?(string)
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?(["hi", "hello", "hi"]) == true
p palindrome?(["Not a palindrome", "Nope"]) == false

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
