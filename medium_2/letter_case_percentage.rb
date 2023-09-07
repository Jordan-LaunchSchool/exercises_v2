=begin
	- write a method that takes a string
	- have the method return a hash
	- the hash should contain the percentage of 
	lowercase, uppercase and neither characters

	to calculate
	 (value a / total) * 100

EXAMPLES:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

ALGO:
	- define a method that takes a string
	- create a lowercase alphabetical array
	- create a uppercase alphabetical array
	- create a hash with lowercase, uppercase and neither with all values set to 0.0
	- get a total of the number of characters
	- create a lowercase value to 0.0
	- create a uppercase value assigned 0.0
	- create a neither value assigned to 0.0

	- iterate over the characters of the input string
		- if lower case add to lower case count
		- if uppercase "								"
		- otherwise, add to the neither sum.

			PERCENTAGE METHOD
	- add value of (lowercase / total characters) * 100 to the lowercase hash key
	- " 						uppercase																	 uppercase				"
	- add the rest to neither as a percentage
	- 

	-	return the hash

=end

LOWERCASE_ALPHA = ('a'..'z').to_a
UPPERCASE_ALPHA = ('A'..'Z').to_a

def percentage(value, total)
	(value / total) * 100
end

def letter_percentages(input_string)
	result_hash = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}	
	character_total = input_string.size
	lower_case_count = 0.0
	upper_case_count = 0.0
	neither_case_count = 0.0

	input_string.each_char do |char|
		case
		when LOWERCASE_ALPHA.include?(char) then lower_case_count += 1
		when UPPERCASE_ALPHA.include?(char) then upper_case_count += 1
		else neither_case_count += 1
		end
	end

	result_hash[:lowercase] = percentage(lower_case_count, character_total)
	result_hash[:uppercase] = percentage(upper_case_count, character_total)
	result_hash[:neither] = percentage(neither_case_count, character_total)
  result_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
