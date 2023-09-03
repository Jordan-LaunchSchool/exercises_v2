=begin

Modify the method from the previous exercise so it ignores non-alphabetic characters 
when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters 
should still be included in the return value; they just don't count when toggling the desired case.



EXAMPLES:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

ALGO:
	- define a character array
	
	- define a method that takes a string
	- create an empty string to be returned
	- create a varaible called to upcase that is equal to true

	- iterate over the characters of the input string
		- if the character is not included in the alphabet array, go to next iteration
		- if the character is included in the alphabet array and to_upcase is true
			add an upcase version of the character to the result string
		- if the current chracter is included in the alphabet array
		&& to_upcase is false
			- add a downcase version of the character to the result string
		- reverse the to_upcase boolean

		- return the result string


=end
ALPHABETICAL_CHARS = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(input_string)
	result = ''
	to_upcase = true

	input_string.each_char do |char|
		if !ALPHABETICAL_CHARS.include?(char)
			result << char
			next
		elsif ALPHABETICAL_CHARS.include?(char) && to_upcase
			result << char.upcase
		else
			result << char.downcase
		end
		to_upcase = !to_upcase
	end

	result
end



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'