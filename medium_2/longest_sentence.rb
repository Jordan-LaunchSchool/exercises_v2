=begin
	- write a program that reads the content of a text file and then prints
	the longest sentence in the file based on a number of words
	- sentences may end with '.', '!', '?'. 
	- any sequences of characters that are not spaces or sentence ending characters should
	be treated as a word
	- the program should print the number of words in the longest sentence

	- split the input text into an array of sentences
	- sort the array by sentence size
		- split the array to get amount of words
	- return the last element which will be the sentence with the most words
=end

def longest_sentence(input_text)
	sentences = input_text.split(/\.|\?|!/)
	p sentences.sort_by {|sentence| sentence.split.size}.last.split.size
end


longest_sentence('')