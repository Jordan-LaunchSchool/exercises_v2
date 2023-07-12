# clean_up_word.rb
=begin
	- write a method that takes a string of words and an assortment of non-alphabetical characters
	- have the method return that string with all non-alphabetical characters replaced by spaces
	- if one or more characters appear in a row, this should just be replaced by a space

		EXAMPLE:
		cleanup("---what's my +*& line?") == ' what s my line '

		ALGO:
		- write a method that takes a string
		- create an empty result string
		- iterate over that characters of the string
			- if the current character is non alphabetical and the last character of the result string is not a space,
				add a space
			- if the current character is an alphabetical character, add it to the result string

		- return the result string
=end

def cleanup(input_string)
	alphabetical = ("a".."z").to_a

	result = input_string.chars.map do |char|
		alphabetical.include?(char) ? char : " "
	end
	
	result.join.squeeze(" ")
end


p cleanup("---what's my +*& line?")  == ' what s my line '