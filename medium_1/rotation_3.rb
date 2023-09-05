=begin
	- write a method that takes an integer
	- have the method return an integer that contains the max. number of
	rotations of the input integer
	- can use the rotate_rightmost_digits method
	- do not have to handle multple 0's

EXAMPLES:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912

max_rotation(735291) == 321579
[7, 3, 2, 5, 9, 1] => [3, 5, 2, 9, 1, 7] ([0] = [-1]) last_digits = 6
[3, 5, 2, 9, 1, 7] => [3, 2, 9, 1, 7, 5] ([1] = [-1]) last_digits = 5
[3, 2, 9, 1, 7, 5] => [3, 2, 1, 7, 5, 9] ([2] = [-1]) last_digits = 4
[3, 2, 1, 7, 5, 9] => [3, 2, 1, 5, 9, 7] ([3] = [-1])	last_digits = 3
[3, 2, 1, 5, 9, 7] => [3, 2, 1, 5, 7, 9] ....					last_digits = 2


max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
[1, 0, 5] => [0, 5, 1] ([0] = [-1]) 
[0, 5, 1] => [0, 1, 5] ([1] = [-1])

max_rotation(8_703_529_146) == 7_321_609_845

ALGO:
		- define a method that takes an integer
		- digit length = input_integer.to_s.chars.size
		- begin a loop counting down from digit length to 0
		- use the block parameter as a the last digits as the last_digits to be rotated
		argument
		- have the return value of rototate_rightmost_digits assigned to 
		the output_integer (use the string digits, converted to_i as arg1)
		(use the block parameter for arg2)

			
	return the output integer
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

def max_rotation(input_integer)
	digit_length = input_integer.to_s.chars.size
	output_integer = input_integer
	digit_length.downto(0) do |last_digits|
		output_integer = rotate_rightmost_digits(output_integer, last_digits)
	end
	output_integer
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped