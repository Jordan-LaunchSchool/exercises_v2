#daily_double.rb

=begin
 - write a method that takes a string
 - have the method return a new string that contains the value of the original string
 - have all the consecutive duplicate characters collapsed into a single character.
 - do not use the squeeze method
	

	EXAMPLES:
	crunch('ddaaiillyy ddoouubbllee') == 'daily double'
	crunch('4444abcabccba') == '4abcabcba'
	crunch('ggggggggggggggg') == 'g'
	crunch('a') == 'a'
	crunch('') == ''

	ALGO:
	- define a method that takes a string
	- initialise an empty result string

		- iterate over the input string using the each method
		- if the current iteration is equal to the last character of the result array
			- skip to current iteration
		- else add the current character to the result string
		- return the result string
=end

def crunch(input_string)
	result = ''
	input_string.each_char do |char|
		result << char unless result[-1] == char
	end
	result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

