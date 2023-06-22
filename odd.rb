=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes an integer argument, positive, negative or zero.
	- have the method return `true` if the numbers absolute value is odd.

  Input: 
	- Integer
  Output: 
	- Boolean
  Rules:
    Explicit: 
		Return a boolean


    Implicit:


=> EXAMPLES <=
	puts is_odd?(2)   == false
	puts is_odd?(5)   == true
	puts is_odd?(-17) == true
	puts is_odd?(-8)  == false
	puts is_odd?(0)   == false
	puts is_odd?(7)   == true

=> DATA STRUCTURES <=


=> ALGORITHM <=
 - define a method that takes an integer
 - check if the input integer is odd
 - return the result

=> CODE <=

=end


def is_odd?(input_integer)
	input_integer % 2 == 1
end

puts is_odd?(2)   == false
puts is_odd?(5)   == true
puts is_odd?(-17) == true
puts is_odd?(-8)  == false
puts is_odd?(0)   == false
puts is_odd?(7)   == true
