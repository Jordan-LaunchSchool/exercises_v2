=begin
Write a method that takes an Array of integers as input, multiplies all the numbers
together, divides the result by the number of entries in the Array, and then prints
the result rounded to 3 decimal places. Assume the array is non-empty.

- write a method that takes an array of integers
- the method should mutiply all of the integers in the array
- divide the result by the number of entries in the array, 
the result should be rounded to 3 decimals
- have the method return a string that includes the desired output


EXAMPLES:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

DATA STRUCTURES:
Input: array of integers
- multiply all of the integers in the array
- divide the result by the number of integers in the array and round to 3 decimal places.

Output: string contraining string interpolation, float rounded to 3 decimal places

"The result is #{}"

ALGO:
 - define a method that takes an array of integers
 - create a sum variable equal to 1
 - iterate over the array, multiplying the current iteration by the sum variable
		(look at using the reduce method?)

 - divide the sum by the number of elements in the array as a float
 - output the sum in string interpolation, have the float formatted to 3 decimal places
 format(%.3f, sum)

=end

def show_multiplicative_average(input_array)
	sum = input_array.reduce(:*) / input_array.size.to_f
	
	puts "The result is #{format('%.3f', sum)}"
end

show_multiplicative_average([3, 5])                # == 'The result is 7.500'
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


	