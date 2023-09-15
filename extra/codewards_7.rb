=begin
	- write a method that takes a string
	- have the method detect if it is a panagram, return true or false

	- pangram is a sentence that contains every single letter
	of the alphabet at least once. 

EXAMPLES:
pangram("The quick brown fox jumps over the lazy dog.") == true
pangram("This is not a pangram.")

DATA STRUCTURES:
	-input: string
	- hash for alphabet values as = 1
	- all hash values == 0
	- output:
		boolean

ALGO:
	- write a method that takes a string
	- create an array containing the alphabet

	- iterate over the input strings characters downcased
		- delete the current iteration from the alphabet array
	
	- is the alphabet array empty?
=end

def pangram?(input_string)
	letters = ('a'..'z').to_a
	input_string.each_char { |char| letters.delete(char.downcase) }
	letters.empty?
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false