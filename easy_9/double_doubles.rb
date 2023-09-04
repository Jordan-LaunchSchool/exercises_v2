=begin
	- write a method that takes an integer
	- a double number is considered an even number of digits whose
	left side numbers are the same as the right side digits. 
	- have the method return 2 times the number proivded as an arugment, unless the
	argument is a double number, in which case should be returned as is

EXAMPLES:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

ALGO:

- define a method that takes an integer
- if the string is considered a double number
		- return the number
	- otherwise return the input integer doubled

- double number: define a method that takes an integer
- convert integer to a string
- if the string size is even, create a variable named middle that is equal to (string size / 2) - 1
	create a first half of number == to 0..middle_index
	create a second half of number == middle_index + 1..-1

- if first_half is equal to second_half return true
- otherwise return true


=end

def double_number?(input_integer)
	string_digits = input_integer.to_s
	if string_digits.size.even?
		middle_index = (string_digits.size / 2) - 1
		first_half = string_digits[0..middle_index]
		second_half = string_digits[(middle_index + 1)..-1]
		return true if first_half == second_half
	end
	false
end

def twice(input_integer)
	return (input_integer * 2) unless double_number?(input_integer)
	input_integer
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10