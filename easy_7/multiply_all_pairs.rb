=begin

Write a method that takes two Array arguments in which each Array 
contains a list of numbers, and returns a new Array that contains the product of
every pair of numbers that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

- write a method that takes two arrays
- have the method return a new array that contains the product of every pair
that can be formed between the lements of the two arrays
- the results should be sorted in increasing value



Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

ALGO:
- define a method that takes two arrays
- create an empty result array
- sort both array into smallest and largest array


- iterate over the smallest array,
	- iterate over the larger array
	- add the result of the small array elements multiplied by the larger array
	element to the result array

	- sort and return the result array


=end

def multiply_all_pairs(arr1, arr2)
	result = []
	small_arr, large_arr = [arr1, arr2].sort

	small_arr.each do |num1|
		large_arr.each do |num2|
			result << num1 * num2
		end
	end

	result.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]