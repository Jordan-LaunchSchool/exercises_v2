=begin
	- write a method that takes a string
	- have the method find a minimum substring that the entire string
	is equal to if ites repeated f
	- have the method return an array with two elements, => [t, k]
	- t = the minimum_substring
	- k = the max_number that `t` is repeated

EXAMPLES:
repeated_substring("abaabb") == ["ab", 3]
substring => ['ababab', 'aba', 'ab'] => repeat sequence [1, 0, 3]
character sequence [6, 3, 2]

repeated_substring("abceeeabc") == ['abceeeabc', 1]
substring => ['abceeeabc', 'abcee', ]


ALGO:
	- write a method that takes a string
	- create substring array

	- create substrings from the input string
		- start at 1 up to input string size
		- if the current substring is divisible by the input string size
			- add the current substring to the substring array
			
	- if the substrings size can be multiplied by the
		substrings size / input string
		- save the substring as the first element and the repeatable times
		as the second element

	
	

=end



# end

def repeated_substring(input_string)
	substring = input_string
	repeat_multiplier = 1
	1.upto(input_string.size - 1) do |index|
		substring = input_string[0..index]
		repeat_multiplier = input_string.size / substring.size
		break if substring * repeat_multiplier == input_string
	end
	[substring, repeat_multiplier]
end


p repeated_substring("abceeeabc") == ['abceeeabc', 1]
p repeated_substring("ababab") == ["ab", 3]
p repeated_substring('a')