# string_to_number.rb

=begin
	- write a method that takes a string of digits
	- have the method return the approptiate number as an integer
	- convert to integer methods are not allowed
	- do not worry aboout leading + or - signs

	ALGO:
	-CREATE A NUMBERS HASH-
		- create a numbers array from 0 - 9
		- create a numbers as string array from `0-9`
		- create an empty numbers hash array
		- iterate over the string array with each with index,
			- add the current element plus the element from string array to
			a new sub array and have that returned by the block and added to 
			the hash_array
			- conver the hash_array to a hash

	- 

=end

def create_numbers_hash
	numbers = (0..9).to_a
	numbers_string = ('0'..'9').to_a
	numbers_hash = {}
	numbers_string.each_with_index do |str, int|
		numbers_hash[str] = int
	end
	numbers_hash
end


p create_numbers_hash

