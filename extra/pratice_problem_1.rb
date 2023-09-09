=begin
	- write a method that takes an array of integers
	- for each number in the array, find how many numbers
	are smaller than it
	- only count unique values, numbers that occur
	multiple times should only be counted once

EXAMPLES:
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
[8] => 3
[1, 2, 3]
[1] < ? => 0
[0]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]	

ALGO:
- write a method that takes an array
- create an empty result array
- iterate over the input array
	- call the count method on a uniq version of the array and add
	the result to the result array
	(result_array << input_array.uniq.count{...})
- return the result array	
											
=end

def smaller_numbers_than_current(input_array)
	result = []
	input_array.each do |current_number|
		result << input_array.uniq.count { |compared_num| compared_num < current_number }
	end
	result
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]