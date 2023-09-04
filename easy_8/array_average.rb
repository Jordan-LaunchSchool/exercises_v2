=begin
	- write a method that takes an array containing integers
	- return the average of all of the integers in the array
	- the return value of the method will be an integer
	- do not use array sum method for the solution

EXAMPLES:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

ALGO:
		- define a method that takes an array
		- create an accumulator variable equal to zero
		- iterate over the input array
			- add the sum of accumulator plus the current iteration to the accumulator variable
			- divide the accumlator by the size of the input array and return the result

=end


def average(input_array)
	accumulator = 0
	input_array.each do |num|
		accumulator += num
	end
	accumulator / input_array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40