=begin
Write a method that takes a String as an argument, and returns a new String 
that contains the original value using a staggered capitalization scheme in 
which every other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters when switching 
between upper and lowercase.

- write a method that takes a string
- have the method return a new string
- have ever other letter in the returned string capitalized
- character that are not letters are not changed but count as an 'other' character

Rules: 
	- The first character (index 0), is always a capital
	- non alphabetical characters return are ignored but index is still used.
	- 0(upcase), 1(downcase), 2(upcase)

DATA Structures:
Input: string
 - convert string to array to use map method
 - array.join to return the array as a string


Output: string

EXAMPLES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

ALGO:
- create an array with alphabetical characters as a constant

- define a method that takes a string
- create an empty results string
- convert input string to array with index
	- if the current index is even, add the upcase version of the character to the result string
	- otherwise, add the downcase version of the character to the result string

- return the result string

=end

ALPHABETICAL_CHARS = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(input_string)
	output_string = ''
	input_string.chars.each_with_index do |char, index|
		if index.even?
			output_string << char.upcase
		else
			output_string << char.downcase
		end
	end

	output_string
end



p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'