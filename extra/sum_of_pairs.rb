=begin
	- write a method that takes 2 arguments
	- first argument: an array
	- second argument: an integer
	- return the first of two values in order (parsed from the left)
	in order of appearance that add up to form the sum
	

EXAMPLES:
sum_of_pairs([11, 3, 7, 5], 10) == [3, 7] => 10

sum_of_pairs([4, 3, 2, 3, 4], 6) == [4, 2]

sum_of_pairs([0, 0, -2, 3], 2) == nil
# There are no pairs of values can be added to produce 2

sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
# 5 + 5 = 10 indices: 1, 5
# 3 + 7 = 10 indices: 3, 4, smallest indices 




find the pair whose sum equals the input integer
find the pair whose indexes have the smallest difference


ALGO:
	- define a method that takes two argument, array and integer
	- iterate over the input array with index
	- find the number we are looking for to equal the input integer
	- if the input array contains the number
			- save the difference in index if it is less than the previous index difference
			- save the current pair to a result array


=end

def sum_of_pairs(input_array, input_integer)
	result = {}
	input_array.each_with_index do |element_1, index_1|
		input_array.each_with_index do |element_2, index_2|
			index_dif = (index_1 - index_2).abs
			next if index_dif == 0 || result.has_key?(index_dif)
			if element_1 + element_2 == input_integer
				result[index_dif] = [element_1, element_2]
			end
		end
	end
	return nil if result.empty?
	result[result.keys.sort.first]
end


p sum_of_pairs([1, 2, 3, 4, 1, 0], 2) # == [1, 1]
# p sum_of_pairs([11, 3, 7, 5], 10) == [3, 7]
# p sum_of_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
# p sum_of_pairs([0, 0, -2, 3], 2) == nil
# p sum_of_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]



