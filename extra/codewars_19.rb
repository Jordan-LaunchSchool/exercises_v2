=begin
	- write a method that takes a string
	- have the method return the same string with all even
	indexed characters in each word lowers cased. 
	- the index must start over with each word


EXAMPlES:
weirdcase("String") => "StRiNg"
weirdcase("Weird string case") => "WeIrD StRiNg CaSe"

ALGO:
	- define a method that takes a string
	- create a empty result array
	- split the input string into an array of words
	- iterate over each word, 
	- iterate over each character and its index 
		- if the current index is even, return the current character upcased
			- if the current index is odd, return the current character downcased
		- add the word with the desired changes to the result array

	- join the array of word back together and return it
	
=end

def weirdcase(input_string)
	result = input_string.split.map do |word|
		updated_word = word.chars.map.with_index do |char, index|
			index.even? ? char.upcase : char.downcase
		end
		updated_word.join
	end
	result.join(' ')
end


p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"

