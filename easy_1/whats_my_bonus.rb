# whats_my_bonus.rb

=begin
=> SCRATCH PAD <=
	
=> PROBLEM <=
	- write a method that takes two arguments - a positive integer and a boolean
	- have the method calculate the bonus for a given salary
	- if the boolean is true, the bonus should be half of the salary
		- if the boolean is false, the bonus should be 0

  -- Input: -- 
	- Integer and a Boolean

  -- Output: -- 
	- Integer

  RULES:

    -- Explicit: --



    -- Implicit: -- 


=> EXAMPLES <=
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=> DATA STRUCTURES <=
	

=> ALGORITHM <=
  - write a method that takes a integer and a boolean
	- if the input boolean is true, output half of the salary

	- otherwise, return false

=> CODE <=


=end

def calculate_bonus(salary, pay_bonus)
	pay_bonus ? salary / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
