# short_long_short.rb

=begin

- write a method that takes two strings
- have the method determine the longest of the two strings
- have the method return the result of concatenating the shorter string, the longer string
and the shorter string
- You may assume that the strings are of different lengths. 

ALGO:

- define a method that takes two strings
- assign the longer string to a variable named long
	- compare the lengths of each string
	- if word one is greater than word two, assign word one to the long variable and word two to the short
	- otherwise assign word one to short and word two to long

- assigned the shorter string to a variable named short
- return short string + long string + short string
=end

def short_long_short(word_1, word_2)
	if word_1.length > word_2.length
		long_word = word_1
		short_word = word_2
	else
		short_word = word_1
		long_word = word_2
	end

	short_word + long_word + short_word
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"