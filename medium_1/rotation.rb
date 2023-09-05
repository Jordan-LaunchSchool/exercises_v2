=begin
	- write a method that takes an array
	- have the method return an array
	- the returned array is to be rotated by moving
	the first element to the end of the array
	- the original array should not be modified
	- #rotatate and #rotate! are not to be used

	EXAMPLES: 
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

ALGO:
	- define a method that takes an array
	- create a result array that equal to the input array
	- have the last element of the array the return value of removing the 
	first element
=end


def rotate_array(input_array)
	result = input_array.dup
	result << result.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true