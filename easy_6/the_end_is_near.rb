=begin
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.

- write a method that takes a string as an argument
- have the method return the second last word


Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

ALGO:
- write a method that takes a string as an argument
- split the string into an array
- return the second last element

=end

def penultimate(input_string)
	input_string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

