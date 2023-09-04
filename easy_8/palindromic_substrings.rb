=begin
	- write a method that takes a string
	- have the method return a list of all substrings that a palindromic
	- palindromic: a substring that consists of the same sequence of characters
	forwards as it does backwards
	- the return value should be the same sequence as the substrings appear in the string
	- duplicate palandromes should be included multiple times

	- palandromes are case sensitive in this case


	EXAMPLES:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

ALGO:
	- define palindromes method that takes a string
	- use the substring method to return an array of all the substrings
	- iterate over the substrings with the select method, returning a new array
	where the current substring equals itself in reverse
	
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

def palindromes(input_string)
	substrings(input_string).select do |substring|
		if substring.size > 1 
			substring == substring.reverse
		end
	end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]