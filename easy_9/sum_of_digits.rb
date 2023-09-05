=begin
	- write a method that takes a positive integer
	- have the method return the sum of its digits


	EXAMPLE:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


[2, 3] == 5


ALGO:
	- define a method that takes an integer
	- convert the integer to a string
	- split the string into an array of characters
	- return a new array where the digits are integers
	- return the sum of the retuned array
=end


def sum(input_integer)
	input_integer.to_s.chars.map {|num| num.to_i }.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

