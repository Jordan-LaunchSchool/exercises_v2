# stringy_strings.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes one argument, a positive integer, and return a string of alternating 1s and 0's
	- The length of the string should match the given integer. 

  Input: 
	- Integer
	
  Output: 
	- String of 1s and 0s 

  Rules:
    Explicit:
		- 


    Implicit:
		- string alwats starts with '1'

=> EXAMPLES <=
	puts stringy(6) == '101010'
	puts stringy(9) == '101010101'
	puts stringy(4) == '1010'
	puts stringy(7) == '1010101'

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes an integer
	- create a result string to output

	- start a for loop for the amount of times as the input integer with one parameter
		- if the current iteration is even or 0, add 1 to the string
		- otherwise add a `0` to the result string
	
	- return the result string

=> CODE <=

=end

def stringy(input_integer)
	result_string = ''

	input_integer.times do |num|
		number = num.even? ? '1' : '0'
		result_string << number
	end

	result_string
end



puts stringy(6) == '101010'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'