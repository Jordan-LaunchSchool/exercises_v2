# right_triangles


=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes an integer
	- have the method display a triangle whose sides each have n stars
	- 

  -- Input: -- 
	- integer

  -- Output: -- 
	- string of stars and spaces creating triangle

  RULES:

    -- Explicit: --
		- first 

    -- Implicit: -- 
		- first output line is an amount of spaces equal to the input_integer
		- the last line out is an amount of stars equal to the input_integer
		- the amount of lines output are equal to the same size as the input_integer plus 1

		- each line output has the same amount of characters (spaces and stars) as the input integer
		- space counter is equal to the input_integer - the amount of stars

=> EXAMPLES <=


=> DATA STRUCTURES <=
	

=> ALGORITHM <=
	- write a method that takes an integer
	- start a space counter/variable starting at 0
	
	start an iteration for the input integer + 1
	- output the the same amount of stars minus the space counter
	- increment the space counter by 1



=> CODE <=

=end

def triangle(input_integer)

	(input_integer + 1).times do |counter|
		puts (' ' * (input_integer - counter)) + ('*' * counter)
	end

end


triangle(5)
triangle(9)

