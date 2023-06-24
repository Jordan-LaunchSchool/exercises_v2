# middle_character.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes a non-empty string argument
	- have the method return the middles character or characters of the argument
	- if the argument has an odd length, return exactly one character
	-	 if the argument has an even length, return two characters

  -- Input: -- 
	- String

  -- Output: -- 
	- String, 1 or 2 characters

  RULES:

    -- Explicit: --
		- return 1 or 2 characters


    -- Implicit: -- 
		- space count as characters
		- 

=> EXAMPLES <=
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=> DATA STRUCTURES <=
	

=> ALGORITHM <=
	** Get both numbers from even string first**
	
	- define a method that thats an *even* string
	- initialise middle index string - assign to value of the size of the input string / 2 minus
	one to get the index

	- access and output the index of the string from string middle variable - 1
	and the middle of the string

=> CODE <=

=end

def center_of(input_string)
	string_middle_index = (input_string.size / 2) - 1

	if input_string.size.even?
		output_string = input_string[string_middle_index, 2]
	else
		output_string = input_string[string_middle_index + 1]
	end
	
	output_string
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'