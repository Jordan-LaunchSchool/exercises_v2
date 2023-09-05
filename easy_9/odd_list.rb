=begin
- write a method that takes an array
- have the method returns an array that contains
every other element
- The values in the returned list should be those
values that are in the 1st 3rd and 5th so on elements
of the input array

EXAMPLES:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

ALGO:
	- define a method that takes an array
	- iterate over the input array, return a new array with the below criteria
		- return true if the current element being referenced 
		index is even

=end

def oddities(input_array)
	input_array.select {|element| input_array.index(element).even?}
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]