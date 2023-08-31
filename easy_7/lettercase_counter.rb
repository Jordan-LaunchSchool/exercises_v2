=begin
Write a method that takes a string, and then returns a hash that contains
 3 entries: one represents the number of characters in the string that are 
 lowercase letters, one represents the number of characters that are uppercase letters, 
 and one represents the number of characters that are neither.

- write a method that takes a string
- have the method return a hash that contains 3 entries
- one entry: represent the number of character in the string that are lowercase letters
- second entry: represents the number of uppercase letters
- third entry: represents the characters that are neither

EXAMPLES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

DATA Structures:
input: string
- convert to array of characters to iterate over the string
- create hash with required keys

output: hash

ALGO:
	#need to account for numbers and characters
- create an alphabetical array

- define a method that takes a string
- create results hash with required keys equal to zero
- - create an alphabetical array
- convert string to array to iterate over each character
	- if the character is included in lowercase alphabet array, add 1 to the lowercase key
	- if the character is included in the uppercase alphabet array, add 1 to the uppercase key
	- otherwise, add 1 to the neither key

- return the hash
=end

def letter_case_count(input_string)
	result_hash = {lowercase: 0, uppercase: 0, neither: 0}
	lower_case_alphabetical = ('a'..'z').to_a
	upper_case_alphabetical = ('A'..'Z').to_a
	
	
	input_string.each_char do |char|
		if lower_case_alphabetical.include?(char)
			result_hash[:lowercase] += 1
		elsif upper_case_alphabetical.include?(char)
			result_hash[:uppercase] += 1
		else
			result_hash[:neither] += 1
		end
	end
	result_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }