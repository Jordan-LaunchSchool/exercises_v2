=begin
- write a method that take an integer
- have the method convert it to a string
- no built in conversions allowed


- string to number formula (value = value * 10 + element)

ALGO:
- create a digits hash with the integer as they key
and the string as the value

- define a method that takes an integer
- create a result array
- use divmod to divide the integer by 10
	- save the _ (quotient) and the remainder
	- access the hash using the remainder and add the value
	to the beginning of  the result array

	- join and return the array


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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'