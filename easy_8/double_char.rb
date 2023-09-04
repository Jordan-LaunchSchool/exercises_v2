=begin
	- write a method that takes a string
	- return a new string which every character is doubled

EXAMPLES:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

ALGO:
- define a method that takes a string
- create an empty results string
- iterate over the input string
	- add the current iteration plus itself to the result string
	
- return the result string

=end

def repeater(input_string)
	result = ''

	input_string.each_char do |char|
		result << char * 2
	end

	result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''