=begin
	- write a method that takes a two integers
	- the first is a count
	- the second is the first number of a sequence
	- the method is to return an array that contains the
	same number of elements as the count argument
	- the value of each argument will be multiples of the starting argument
	- assume that the count argument will always have a value of 0 or greater
	- the starting number can be an integer value
	- if the count is zero, an empty array should be returned

EXAMPLES:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

ALGO:
		- define a method that takes two integers
		- create an empty result array
		- create a sum variable equal to 0

		- start a loop that rusn for as many times as the count integer
			- reassign the sum integer to the sequence integer plus itself
			- add the result to result array

=end


def sequence(count, sequence)
	result = []
	sum = 0

	count.times do
		result << sum += sequence
	end
	result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []