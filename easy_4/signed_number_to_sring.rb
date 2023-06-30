#signed_number_to_string
=begin
	- write a method that takes an integer
	- have the method convert the integer to a string
	- if the method is positive, the returned string should be prefixed
		with a '+' or a '-' if it is negative


=end

DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 
	6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}
	
def integer_to_string(input_integer)
	result = ''
	
	loop do
		input_integer, remainder = input_integer.divmod(10)
		result.prepend(DIGITS[remainder])
		break if input_integer == 0
	end

	result
end

def signed_integer_to_string(input_integer)
	if input_integer < 0
		'-' + integer_to_string(input_integer.abs)
	elsif input_integer > 0
		'+' + integer_to_string(input_integer)
	else
		integer_to_string(input_integer)
	end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'