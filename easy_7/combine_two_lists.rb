=begin

- write a method that takes two arrays as arguments
- have the method combine both arrays alternating each element from either array
- assume both input arrays are non-empty and they have the same number of elements

input:
	- input is two arrays
	- 

output:
	- new array with both arrays combined
	- element of the first array goes first

AlGO:
	- define a method that takes two arrays
	- create an empty array
	- iterate over the fist array
		- add the current iteration to the empty array
		- add the current index of the second array to the empty array
	- return the created array
	
=end

def interleave(arr1, arr2)
	output_array = []
	arr1.each_with_index {|element, index| output_array << element << arr2[index]}
	output_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']