# letter_swap.rb

=begin
	- write a method that takes a string of words
	- have the method return a string in which the first and the last letters
	of every word are swapped
	
	swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
	swap('Abcde') == 'ebcdA'
	swap('a') == 'a'

	ALGO:
	- define a method that takes a string
	- split the string into an array
	- iterate over the array, returning a new array (map)
		- assign the new array to a variable
		- have the first letter and the last letters of each array swapped

	- join the new array back together with spaces
=end


def swap(input_string)
	result = input_string.split.map do |word|
		word[0], word[-1] = word[-1], word[0]
		word
	end

	result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'