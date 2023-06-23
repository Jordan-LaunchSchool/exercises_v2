# reverse_the_digits.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes a positive integer
	- have the method return that number with its digits reversed

  -- Input: -- 
	- an integer

  -- Output: -- 
	- an integer, reversed

  RULES:

    -- Explicit: --
		- 


    -- Implicit: -- 
		-

=> EXAMPLES <=
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

=> DATA STRUCTURES <=
	

=> ALGORITHM <=
	- define a method that takes an integer
	- covert the integer into a string, conver the string into an array
	- assign a variable to the newly created array
	- initialise an output variable and assign it to an empty array

	- iterate over the digits array
		- pop the last character of the digit array and add it the the output variable array
	

	- convert the output array to a string and then to an integer (try straight to an integer)
	- return the string


=> CODE <=

=end

def reversed_number(input_integer)
	integer_array = input_integer.to_s.chars
	output_value = []

	integer_array.size.times do
		output_value << integer_array.pop
	end

	output_value.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
