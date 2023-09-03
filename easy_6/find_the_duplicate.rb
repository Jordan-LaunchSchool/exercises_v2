# find_the_duplicate.rb

=begin
	- write a method that takes and unordered array 
	- have the method find and return a value that will be duplicated exactly once

	ALGO:
	- create a current element variable assigned to nil
	- sort the input array
	- iterate over the array
		- if the current element is equal to the current element variable, 
				- return the current element
		- otherwise, save the current element to the current element varaible.
=end

# def find_dup(input_array)
# 	current_element = nil
	
# 	input_array.sort.each do |element|
# 		if element == current_element
# 			return element
# 		end
# 		current_element = element
# 	end
# end

def find_dup(input_array)
	input_array.find {|element| input_array.count(element) == 2}
end


p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73