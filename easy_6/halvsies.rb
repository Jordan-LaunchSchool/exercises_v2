# halvsies.rb

=begin
	- write a method that takes an array as an argument
	- have the method return two arrays as a pair of nested arrays
	that contain the first half and the second half of the original array, respectively
	- if the original array contains an odd number of elements, the middle element should be placed
		in the first half array


ALGO:
		- define a method that takes an array
		- create an empty first half array
		- create an empty second half array
		- create half of index counter equal to half the array size
		- iterate over the the input array using each with index
		- if the current index is less than half the input array size
				- add the current iteration to the first half array
			- otherwise add the current iteration to the second half array
		return the first half array and the second half array nested in an array
=end

# def halvsies(input_array)
# 	first_half = []
# 	second_half = []
# 	half_array_size_index = (input_array.size + 1) / 2

# 	input_array.each_with_index do |element, index|
# 		if index < half_array_size_index
# 			first_half << element
# 		else
# 			second_half << element
# 		end
# 	end
	
# 	p [first_half, second_half]
# end

def halvsies(input_array)
	split_index = (input_array.size / 2.0).ceil
	first_half = input_array.slice(0...split_index)
	second_half = input_array.slice(split_index.. -1)
	[first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]