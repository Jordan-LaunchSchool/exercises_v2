=begin
Write a method that takes a string as an argument and returns a 
new string in which every uppercase letter is replaced by its lowercase version, and 
every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

- write a method that takes a string
- have the method return a new string
- if the letter is lower case, change it to uppercase
- if the letter is uppercase, change it to lower case
- if the character is non-alphabetic, return the same character



EXAMPLES:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

DATA STRUCTURE:
	Input: string
	- use empty result string to add characters to and return
	- use a lowercase alphabetical array to compare characters with
	- use an uppercase "																					"


	Output: new string

	ALGO:
	- create a lower case alphabetical array as a constant
	-	create an uppercase "																"

	- define a method that takes a string
	- create an empty result string
	- iterate over the characters of the input string
		- if the character is included in the lower case array, add the uppercase version of itself
		- if the character is included in the upper case array, add the lower case version of itself
		-	otherwise return the character as is
	- return the result string

	
=end

LOWER_CASE_ALPHABET = ('a'..'z').to_a
UPPER_CASE_ALPHABET = ('A'..'Z').to_a

def swapcase(input_string)
	result_string = input_string.chars.map do |char|
		if LOWER_CASE_ALPHABET.include?(char)
			char.upcase
		elsif UPPER_CASE_ALPHABET.include?(char)
			char.downcase
		else
			char
		end
	end

	result_string.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'