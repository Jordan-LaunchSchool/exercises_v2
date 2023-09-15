=begin
	- write a method that takes an array of integers
	- have the method return the unique number


EXAMPLES:
find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

ALGO:
	- define a method that takes an array
	- iterate over a uniq version of the array
		- return the integer if it appears only once

=end

def find_uniq(input_array)
	input_array.uniq.each {|num| return num if input_array.count(num) == 1}
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55