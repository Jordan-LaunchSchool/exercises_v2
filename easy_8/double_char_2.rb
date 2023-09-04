=begin
 - write a method that takes a string
 - have the method return a new string where every constanant character is doubled
 - vowels (a, e, i, o, u), digits and whitespace should not be doubled 

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

ALGO:
- create a constant of vowels

- define a method that takes a string
- create an empty result string

- iterate over the characters of the input string
	- if the current character is included in vowels
		- add it to the result string mutliplied by 2
	- otherwise, add it to the result string

- return the result string

=end

VOWELS = %w(a e i o u A E I O U)
CONSTANTANT = (('A'..'Z').to_a + ('a'..'z').to_a).delete_if {|char| VOWELS.include?(char)}


def double_consonants(input_string)
	result_string = ''
	input_string.each_char do |char|
		if CONSTANTANT.include?(char)
			result_string << char * 2
		else
			result_string << char
		end
	end
	result_string
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""