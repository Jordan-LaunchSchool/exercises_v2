=begin
	- write a method that takes a string as an argument
	- have the method return an array
	- the array elements should have each word from the array followed by the number of characters
	in the word

EXAMPLES:

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

ALGO:
	- define a method that takes a string
	- create an empty array to be returned
	- split the string into an array of words
	- iterate over the array of words
		- return a string containing the current word and string interpolation of the length
	to be added to the result array


=end

def word_lengths(input_string)
	input_string.split.map do |word|
		"#{word} #{word.size}"
	end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []