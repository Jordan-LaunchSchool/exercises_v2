=begin
	- write a method that takes a string
	- have the method return the character that occurs
	the least often
	- If there are multiple characters with equal low
	occurences, return the one that appears the first in the string

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

=> iterate over each character
=> add each character to a hash as the key, occurence as the value
=> 

ALGO:
	- write a method that takes a string
	- lowest_occurence_char = ''
	- lower_occurence_count = input_string.size
	- iterate over the characters of the input string
		- if the current character count is less than 
			lower occurence count, reassign lowest character
			count to current character count
			- also add the current character to lowest_char
	
	- return lowest_occurence char	
=end

def least_common_char(input_string)
	lowest_char = ''
	lowest_char_count = (input_string.size + 1)
	input_string = input_string.downcase

	input_string.each_char do |char|
		if input_string.count(char) < lowest_char_count
			lowest_char, lowest_char_count = char, input_string.count(char)
		end
	end

	lowest_char
end



p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'