=begin
	- write a method that takes an integer
	- have the method find the greatest product of five
	consecutive numbers in the given string of digits

EXAMPLES:
greatestProduct("123834539327238239583") => 3240
[1, 2, 3, 8, 3] => 144
[0, 5]
[index, range] (we want to break the loop array does not have 5 elements)

ALGO:
	- write a method that takes a string of integers
	- create a max product sum equal to zero
	- iterate over the the input strings index
		- slice from current index with a range of 5
		- break if the current slice does not contain 5 elements
		- convert each element in the array to integers
		-	find the product of all elements, reduce?
		- if the current product is greater than max product sum
			- assign max product sum to the current product

		- return the max product sum

=end


def greatest_product(input_string)
	max_product_sum = 0
	input_string.chars.each_index do |index|
		consecutive_nums = input_string[index, 5]
		break if consecutive_nums.size < 5
		current_product_sum = consecutive_nums.chars.map(&:to_i).reduce(:*)
		max_product_sum = current_product_sum if current_product_sum > max_product_sum
	end
	max_product_sum
end

p greatest_product("123834539327238239583")