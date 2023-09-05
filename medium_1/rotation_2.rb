=begin
	- write a method that takes two arguments
	- have the method rotate the last `n` digits
	- rotating just 1 digit results in the original array being
	returned
	- you may use the rotate array method from the previouse
	exercise
	- you may assume that `n` is always positive

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

ALGO:
	- define a method that takes two intgers
	- split the input integer into a string and an array of characters
	- call the rotate_array method and pass the last `n` element of the array
		- to pass the last to `n` elements, use the pop method method with `n` as the argument
	- add the return value of the rotate_array method to the back of 
	the input digit string
	- join the digit string array, convert to integer and return the value

=end

def rotate_array(input_array)
	result = input_array.dup
	result << result.shift
end

def rotate_rightmost_digits(input_integer, last_digits)
	digit_array = input_integer.to_s.chars
	digit_array += rotate_array(digit_array.pop(last_digits))
	digit_array.join.to_i
end
	
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917