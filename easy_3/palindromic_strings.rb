# palindromic_strings.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that returns true if the the string passed as an argument is a palindrome, false otherwise
	- A palindrome reads the same forward as it does backwards.

  -- Input: -- 
	- strign

  -- Output: -- 
	- boolean

  RULES:

    -- Explicit: --
		- case matters
		- all characters matter


    -- Implicit: -- 
		-

=> EXAMPLES <=
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes a string
	- compare the if the string is equal to itself reversed
	- return a boolean result

=> CODE <=

=end

def palindrome?(input_string)
	input_string == input_string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true