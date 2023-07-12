# letter_count_2.rb
=begin
 - modify the method from the previous exercise to exclude non-letters when determining word size.


		ALGO:
	- write a method that takes a string
	- split up the current input string into an array
	- remove all non alphabetical characters from each word
	- iterate over the array use the each with object method that create and return a new hash
		- if the returned hash already has an existing key equal to the length of the current element
			- increment the current key by 1
		- if the hash does not have an existing key equal to the length of the current element
			- add the key and make its value 1
		
	- return the hash
=end


def word_sizes(input_string)

	input_string.split.each_with_object({}) do |word, hash|
		word = word.delete("^a-zA-Z")
		if hash.has_key?(word.length)
			hash[word.length] += 1
		else
			hash[word.length] = 1
		end
	end
	
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}