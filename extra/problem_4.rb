=begin
	- write a method that takes an array of integers
	- have the method return two number that are closest together in value

EXAMPLES: 
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
[19] => iterate input array 19 - 25 => 6(absolute), last seperation value
														19 - 32 => 3(abs), current seperation value+
														skip if the current value == the value being compared
														if current value < last value (save to smallest value)
															add the current iteration(two elements) to result

[25, 32, 4, 27, 16]

[25] 
[19, 25, 32 ...]
p closest_numbers([12, 7, 17]) == [12, 7]

ALGO:
	- define a method that takes an array
	- create a result variable equal to nil
	- create a varaible called last seperation value equal to 0
	
	- iterate over the input array
		- iterate over the input array again
		- skip the iteration if the current value equal the compared value
		- minus the current value against the compared value, get the absolute value
		- if the current seperation is less than the last seperation or if the seperation value is 0
			- assign the result varaible to an array containing the 2 values being compared
			save the current seperation value to the last seperation value
	- return the result array
=end


def closest_numbers(input_array)
	result = input_array[0, 2]
	lowest_seperation_value = (input_array[0] - input_array[1]).abs

	input_array.each do |current_number|
		input_array.each do |compared_number|
			next if current_number == compared_number
			current_seperation_value = (current_number - compared_number).abs
			if current_seperation_value < lowest_seperation_value
				result = [current_number, compared_number]
				lowest_seperation_value = current_seperation_value
			end
		end
	end

	p result
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
