=begin
Write a method that takes a single String argument and returns a new string that contains 
the original value of the argument with the first character of every word capitalized and all other letters lowercase.
You may assume that words are any sequence of non-blank characters.

- write a method that takes a string
- have the method return a string that contains following changes:
- the first character of each word must be capitalised
- all other letters must be lower case

EXAMPLES	
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


DATA

ALGO
- define a method that takes a string
- split the string up into an array
- iterate and return a new array where each word is capitalised
- join the array back together

=end

def word_cap(input_string)
	input_string.split.map {|word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'