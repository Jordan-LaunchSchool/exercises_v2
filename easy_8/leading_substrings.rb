=begin
 - write a method the takes a string
 - have the method return a list of sub strings
 - the return value should be arranged from short to longest 

EXAMPLES:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

ALGO:
- define a method that takes a string
- create a substrings empty array
- convert input string to array of characters
- iterate over the array of characters index
	 -add the elements from 0 - current index of the input array, joint as a string
	to the substring array

- return the substring array


=end

def leading_substrings(input_string)
	substrings = []

	input_string.chars.each_index do |index|
		substrings << input_string[0..index]
	end
	substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']