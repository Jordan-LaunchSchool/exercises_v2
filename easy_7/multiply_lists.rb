=begin
Write a method that takes two Array arguments in which each Array contains
 a list of numbers, and returns a new Array that contains the product of each pair 
 of numbers from the arguments that have the same index. You may assume
  that the arguments contain the same number of elements.

- write a method that takes two arrays
- have the method return a new array that contains the product of each pair 
of numbers that have the same index


multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

ALGO:
	- define a method that takes two array
	- create a result array thats empty

	- iterate over the first array with index
	- multiply the current iteration with element of the same index from arr2
		add the result to the result array
	
	- return the result array

=end


def multiply_list(arr1, arr2)
	result = []

	arr1.with_index do |_, index|
		result << arr1[index] * arr2[index]
	end

	result	
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]