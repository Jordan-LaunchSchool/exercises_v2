=begin
	- write a method that takes a string of integers
	- have the method return the number of odd-numbered
	substrings that can be formed

EXAMPLES:

[1, 1, 3, 13, 41, 341, 1341]
substrings mental model:
[0, 1], [0, 2].. [0, 4] => iterate using index
[1, 1], [1, 2]... [1, 3] => iterate again for size of string from index..index-1.size

[1], [3], [4], [1]
[1, 13, 134, 1341]


odd_substrings("1347231") == 20


ALGO:
	- write a method that takes a string
	
	- create an empty substring array
	- iterate over the input strings index
		- add index 0, with a range of one to the substring array
		
=end


def odd_substrings(input_string)
	substrings = []

	input_string.chars.each_index do |index|
		1.upto(input_string.size - index) do |range|
			substrings << input_string[index, range]
		end
	end

	substrings.select {|num| num.to_i.odd?}.size
end


p odd_substrings("1341") == 7