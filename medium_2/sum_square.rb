=begin
- write a method that takes an integer
- have the method compute the sum of the first `n` integers
and the sum of the square of the first `n` integers

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

[1, 2, 3]**2 [1**2, 2**2, 3**2]

ALGO:
- define a method that takes an integer
- create an array from 1..`n`
- create a variable equal to the sum of the array squared
- create a varible set to the return value of
	the map method being called on the created array
		- each iteration squared, 
	- reassign this variable to the sum of the array
	- have the first result minus the second result, and return it



=end

def sum_square_difference(input_integer)
	initial_array = (1..input_integer).to_a

	sum_squared = initial_array.sum ** 2
	values_squared = initial_array.map {|num| num**2}.sum	

	sum_squared - values_squared
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150