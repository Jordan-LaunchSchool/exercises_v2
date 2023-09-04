=begin
	- write a method that take a string containing one or more words
	- have the method return a new string
		- if a word in the string has 5 or more characters, have the characters reversed
		
EXAMPLES:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

ALGO:
- write a method that takes a string
- split the into an array of words
- iterate over the array of words, returning a new array
		- if the current word is greater than 5 words
			- return itself reversed
		- otherwise return the word

	- join the new array wuth a space


=end

def reverse_words(input_string)
	result = input_string.split.map do |word| 
		word = word.reverse if word.size >= 5
		word
	end
	result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS