=begin
	- write a method that takes a string
	- have the method return true if the () are balanced
	otherwise return false

EXAMPLES:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
['(', '(', ')', ')']
if the '(' count is not equal to ')' count and the array does
start with with ')' return false

balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false

ALGO:
	- define a method that takes a string
	- create a balaned variable equal to zero
	- iterate over the characters of the input string
		- if the current character is '(' add 1 to the balanced variable
		- if "												')' minus one from the balanced varaible
		- return false if balanced variable is < 0
	if variable is greater than 0, return false otherwise return true
=end

def balanced?(input_string)
	balanced = 0
	input_string.each_char do |char|
		balanced += 1 if char == '('
		balanced -= 1 if char == ')'
		break if balanced < 0
	end
	balanced.zero?
end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

