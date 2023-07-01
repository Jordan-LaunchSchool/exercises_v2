# ascii_string_value.rb

=begin
	- write method that determines that and returns the ASCII string value
	of a string that is passed in as an argument. 
	- The ASCII string value is the sum of the ASCII values of every character in the string
	- you may use string.ord to determine the ASCII value of a character

	ascii_value('Four score') == 984
	ascii_value('Launch School') == 1251
	ascii_value('a') == 97
	ascii_value('') == 0

	ALGO:

	- define a method that takes a string
	- create an ascii value variable and assign it to 0
	- convert the string to an array of characters using .char
	- iterate over the string array
		- iterate over each character
			- increment the ascii value by the return value of .ord being called on the current character

	- return the ascii value variable
=end


def ascii_value(input_string)
	ascii_value = 0
	input_string.chars.each do |char|
		ascii_value += char.ord
	end

	ascii_value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0