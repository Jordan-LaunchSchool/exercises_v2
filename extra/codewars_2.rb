=begin

ALGO:
- write a method that takes an array
- create a empty number of occurences hash
	- iterate over the inpit array
		- if the current iteration is not a key in the hash
		- add the current iteration as a key and the 1 as the value
		-	if it is already included, add plus one to the correct value

	- create number of pairs variable saved to 0
	- iterate over the values of the hash, 
			- divide the current iteration by 2 and add the result to the
			number of pairs variable

	- return the number of pairs

											
=end

def pairs(input_array)
	occurences = {}
	input_array.each do |num|
		if occurences.has_key?(num)
			occurences[num] += 1
		else
			occurences[num] = 1
		end
	end

	number_of_pairs = 0
	occurences.each_value do |value|
		number_of_pairs += (value / 2)
	end
	number_of_pairs
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0