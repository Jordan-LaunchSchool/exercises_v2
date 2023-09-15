=begin
	- write a method that takes an array
	- have the method return a hash
	- empty or nil input must return nil
	- the hash return must contain the unique values of the
	arrays as keys, and the counting of each value as values

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}


ALGO:
	- write a method that takes an array
	- return nil unless input array size is 1 or greater
	- create a empty result hash
	-	iterate over the input array
		- if the current iteration already has an existing key
			- add one to the value
		- otherwise, create a key and add one
		- return the result hash

=end

def group_and_count(input_array)
	return nil if input_array.empty? || input_array.nil?
	result = {}
	input_array.each do |number|
		if result.has_key?(number)
			result[number] += 1
		else
			result[number] = 1
		end
	end
	result	
end

input = [0, 1, 1, 0]

p group_and_count(input) # == {1=>2, 2=>3, 3=>1}