=begin
	- write a method that takes an array of integers
	- have the method return the minimum sum of 5 consecutive
	numbers in the array
	- if there are less than 5 elements in the array
		the return should be nil

EXAMPLES:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
[55, 2, 6, 5, 1] ... [0, 5]
[2, 6, 5, 1, 2] ... [1, 5]
add to a sub arrays array
sort the sub array by sum taking the lowest
result array first

p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

ALGO:
	- define a method that takes an array of integers
	- create a sub arrays variable
	- iterate over the arrays index
		- break if current iteration + 5 has less than 5 elements
		- add the current iteration + 5 elements to sub arrays variable
	
	
	- return nil if the subarrays is empty

	- sort the sub arrays by sub_array.sum
	- retun the first sub array

=end

def minimum_sum(input_array)
	sub_arrays = []
	input_array.each_index do |index|
		break if input_array[index, 5].size < 5
		sub_arrays << input_array[index, 5] 
	end
	
	return nil if sub_arrays.empty?

	sub_arrays.sort_by {|sub_array| sub_array.sum}.first.sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10