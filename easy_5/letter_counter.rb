# letter_counter.rb

=begin
 - write a method that takes a string with one or more spaces
 - have the method return a hash that shows the number of words of different sizes
 - words consist of any string of character that do not include a space

	EXAMPLES:
	word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
	word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
	word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
	word_sizes('') == {}

	ALGO:
	- write a method that takes a string
	- split up the current input string into an array
	- iterate over the array use the each with object method that create and return a new hash
		- if the returned hash already has an existing key equal to the length of the current element
			- increment the current key by 1
		- if the hash does not have an existing key equal to the length of the current element
			- add the key and make its value 1
		
	- return the hash
=end

def word_sizes(input_string)
	input_string.split.each_with_object({}) do |word, hash|
		if hash.has_key?(word.length)
			hash[word.length] += 1
		else
			hash[word.length] = 1
		end
	end
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}