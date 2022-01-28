# Given a string of words separated by spaces, write a method 
# that takes this string of words and returns a string in which 
# the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, 
# and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# **Problem**
# swap the first and last characters of each word in the string
# input: string - output: string

# **Edge Cases**
# if the string only has one letter, it should be the same after swapping
# Case sensitive, swap the exact character

# **Algorithm**
# split the string on whitespace into an array of words
# create a result string for the final sentence
# iterate through each word
# # if the length of the word is 1, append the word onto the result string and jump to the next loop
# # take the character at[0] and move it to the end of the word
# # take the characer at [-2] and move it to the beginning of the word
# # append the new word onto the result string


def swap(input_string)
  words = input_string.split
  final_sentence = []
  words.each do |word|
    if word.size == 1
      final_sentence << word 
      next
    end
    word = word[1..] + word[0]
    word = word[-2] + word
    word.slice!(-2)
    final_sentence << word
  end
  final_sentence.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
