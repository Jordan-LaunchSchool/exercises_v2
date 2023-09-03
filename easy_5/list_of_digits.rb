# list_of_digits.rb

=begin
	- write a method that takes an integer
	- have the method return a list of the digits in the number

	EXAMPLES:
	puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
	puts digit_list(7) == [7]                     # => true
	puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
	puts digit_list(444) == [4, 4, 4]             # => true

	ALGO:
	- define a method that takes an integer
	- convert the integer to a string
	- split the string into indiviual characters
	- iterate over and return an array where each character is converted in an array (map)

=end

def digit_list(input_integer)
	input_integer.to_s.chars.map {|char| char.to_i}
end




puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]     