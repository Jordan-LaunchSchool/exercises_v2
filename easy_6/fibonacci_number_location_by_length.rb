=begin
	- write a method that calculates and returns the index of the first fionaccia number
	that has the number of digits specified in the argument
	
EXAMPLES:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

ALGO:
	- define a method that takes an integer, which represents the number of digits in the fib number
	- create a fib array counter, with two elements, both 1's
	- create a counter variable equal to zero
	- create a current fib digit lenth equal to zero

	- start a loop that break when the current digit length is equal to the required intger value that is passed in
	- add the first number, accessed using the counter, plus the second number, accessed using the counter + 1
	- add the result of the above addition to the fib array
	- reassign the current digit length to the last element of the fib array, converted to a string, and the return value of the lenghth

	- return the length of the fib array to represent the index of the required input value occurs.
=end




def find_fibonacci_index_by_length(fib_digit_length)
	fib_array = [1, 1]
	counter = 0
	current_digit_length = 0

	until current_digit_length >= fib_digit_length
		fib_array << fib_array[counter] + fib_array[counter + 1]
		counter += 1
		current_digit_length = fib_array.last.to_s.length
	end

	fib_array.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847