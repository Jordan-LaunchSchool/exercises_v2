=begin
	- write a method that takes an integer
	- have the method find the sum of all multiples of 3 or 5
	between the integer and zero
	- if the number is negative, return 0
	- if the number is a multiple of 3 and 5, only count it once

EXAMPLES:
solution(10) => 23
[3, 5, 6, 9] => 23

ALGO:
	- write a method that takes an integer
	- create a sum variable eqaul to 0
	- if the integer is less than or equal to 0, return sum

	- loop for the amount of times as the integer, create a counter
		- if the counter is a multiple of 3 or 5, add it to the sum variable

	- return the sum variable
=end

def solution(input_integer)
	sum = 0
	return sum if input_integer <= sum
	input_integer.times do |num|
		num % 3 == 0 || num % 5 == 0 ? sum += num : next
	end
	sum
end


solution(10)