=begin
	- write a method that takes an array of integers between 0 - 19
	- have the method return an array of those intergers sorted on the english word
	for each number

	EXAMPLE:
	alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
	]

	ALGO:
	- create digit to english word hash
	- define a method that takes an array of integers
	- create an empty result array
	- turn the english hash into an array and sort it by the english word
	- iterate over the array, if the integer is contained in the input array
		- add the integer to the result array

	- return the result array
=end

DIGIT_ENGLISH_WORD = {
	1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
	8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
	14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
	19 => 'nineteen', 0 => 'zero'
}

def alphabetic_number_sort(input_array)
	result = []
	array_sorted_by_english_word = DIGIT_ENGLISH_WORD.to_a.sort {|a, b| a[-1] <=> b[-1]}
	array_sorted_by_english_word.each do |element|
		if input_array.include?(element[0])
			result << element[0]
		end
	end

	result
end


p alphabetic_number_sort((0..19).to_a) == 
[
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
	]