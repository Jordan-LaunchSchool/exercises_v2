# multiples_of_3_and_5.rb

=begin
 - write a method that searches for all multiples of 3 and 5 that lie between 1 and some other number
 and then computes the sum of those multiples.

 EXAMPLE: 
	- If the supplied number is 20 the result should be 98 (3+5+6+9+10+12+15+18+20)

	ALGO:
	 - define a method that takes an integer
	 - create a new array from one 1 to the input integer
	 - iterate over the array using select!
	 		- if the current element is a multiple of 3 or 9
		return the sum of the array

		return tht array

=end

def multisum(input_integer)
	result_array = (1..input_integer).to_a
	result_array.select! do |number|
		number % 3 == 0 || number % 5 == 0
	end
	result_array.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168