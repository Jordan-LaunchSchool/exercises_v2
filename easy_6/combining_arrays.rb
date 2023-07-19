=begin
	- write a method that takes two arrays as arguments
	- have the method return an array that contains all of the values
	from the arguments arrays
	- there should be no duplications of values in the returned array
	even if there are duplicates in the original arrays

=end

def merge(arr1, arr2)
	(arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]