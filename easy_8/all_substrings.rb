=begin
	- write a method that takes a string
	- have the method return a list of all substrings
	- the returned list should be ordered by where in the string
	the substring begins
	
EXAMPLES:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

[0..0], [0..1], [0..2], [0..3], [0..4],
[1..1], [1..2], [1..3], [1..4],
[2..2], [2..3]

ALGO:

- define a method that takes a string
- create an empty substring array

- start a loop
	- start a loop, from 0 upto string size minus 1
		- create an index place holder
		- add from the (index variable) to (index + index variable) to empty substring array
		LOOP ENDS
	- remove the first character of input string
	- break when input string is empty
end

=end

def substrings(input_string)
	substrings_result = []
	

	loop do
		0.upto(input_string.size - 1) do |index|
			substrings_result << input_string[0..index]
		end
		
		input_string = input_string.sub(input_string[0], '')
		
		break if input_string.empty?
	end

	substrings_result
end

p substrings('abcde') == [
	'a', 'ab', 'abc', 'abcd', 'abcde',
	'b', 'bc', 'bcd', 'bcde',
	'c', 'cd', 'cde',
	'd', 'de',
	'e'
]