=begin
	- write a method that takes an array of numbers
	- have the method return the sums of the sums of each leading subsequence
	for that array.
	- you may assume that the array contains atleast one number


EXAMPLES:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

ALGO:

- define a method that takes an array
- create a subsequence variable assigned an empty array
- iterate over the input array with index
	- from 0..index, add the current elements as a nested array to the subsequence array
	
- create a sum variable assigned to 0
- iterate over the subsequence array 
		- increment sum by the sum of the current subsequent array being referenced

- return the sum variable

=end

def sum_of_sums(input_array)
	subsequence_array = []

	input_array.each_index do |index|
		subsequence_array << input_array[0..index]
	end

	sum = 0
	subsequence_array.each do |subsequence|
		sum += subsequence.sum
	end
	
	sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35