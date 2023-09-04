=begin
	- write a method that takes an array
	- have the method print out groups of words that are anagrams
	- anagrams are words that have the exact same letters
	in them but are in different orders

EXAMPLE:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

ALGO:
	- define a method that takes an array

	- iterate over the input array, place holder current word
		- iterate over the input array again, 
		 - if the current word does not equal compared word, go onto the next iteration
		  	-if the current word, split into characters and sorted, is 
				equal to the next word being iterated split into characters and
				sorted, add the word being iterated over to the result array
		
	return the result array

	[['d', 'e', 'm', 'o'], ['d', 'o', 'm', 'e']]

=end


def group_anagrams(input_array)
	anagrams = []
	input_array.each do |current_word|
		result_array = []
		input_array.each do |compared_word|
			if current_word.chars.sort == compared_word.chars.sort
				result_array << compared_word
			end
		end
	anagrams << result_array
	end

	anagrams.uniq.each do |array|
		p array
	end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
	'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
	'flow', 'neon']

group_anagrams(words)