# string_to_number

=begin
	- write a method that takes a string of numbers
	- have the method conver the string to an integer

	string_to_integer('4321') == 4321
	string_to_integer('570') == 570

	ALGO:
	- define a digits hash
	- define a method that takes a string
	- convert the string to an array of each character
	-	

	- create a value variable and assign it to 0
	- iterate over the array that is the value of 
		- access the associated integer from the hash array * 10 (10 * value + digit)
	
	- return the value variable
=end

DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}


def string_to_integer(input_string)
	digit_array = input_string.chars
	value = 0

	digit_array.each do |number|
		value = 10 * value + DIGITS[number]
	end
	
	value
end





string_to_integer('4321') == 4321
string_to_integer('570') == 570