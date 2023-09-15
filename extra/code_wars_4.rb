=begin
	- write a method that takes a string
	- have the method return an integer
	- the integer is to represent to longest chain of vowels
	in the substring

EXAMPLES:
vowel_string_count("codewarriors") == 2
[c], [o].all?.vowels? => true [o, d].all?.vowels? => false
[d], .. 
[i].all?.vowels? => true, [i, o].all?.vowels? => true .count == 2
[index, 1], [index, 2]

vowel_string_count("suoidea") == 3
vowel_string_count("iuuvgheaae") == 4
vowel_string_count("ultrarevolutionariees") == 3
vowel_string_count("strengthlessnesses") == 1
vowel_string_count("cuboideonavicuare") == 2
vowel_string_count("chrononhotonthuooaos") == 5
['o'] => [14, 1]
['o', 'o'] => [14, 2]
['o', 'o', 'a']
vowel_string_count("iiihoovaeaaaoougjyaw") == 8

ALGO:
	- write a method that takes a string
	- create a vowels array
	- create a max_count = 0
	- current counter = 0
	- iterate over the input string
		- if the current character is a vowel
			- add one to the current counter
			- if the current counter is greater than the max count
				- max counter equal current counter
		otherwise
				- current counter = 0
		- return the max counter
=end

def vowel_string_count(input_string)
	vowels = %w(a e i o u)
	max_count = 0
	current_count = 0

	input_string.each_char do |char|
		if vowels.include?(char)
			current_count += 1
		elsif
			current_count = 0
		end
		max_count = current_count if current_count > max_count
	end

	max_count
end
p vowel_string_count("codewarriors") == 2
p vowel_string_count("suoidea") == 3
p vowel_string_count("iuuvgheaae") == 4
p vowel_string_count("ultrarevolutionariees") == 3
p vowel_string_count("strengthlessnesses") == 1
p vowel_string_count("cuboideonavicuare") == 2
p vowel_string_count("chrononhotonthuooaos") == 5
p vowel_string_count("iiihoovaeaaaoougjyaw") == 8