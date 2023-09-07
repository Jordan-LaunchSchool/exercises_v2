=begin
	- write a fibonacci method that takes an integer and returns the number
	that occurs at the input integer

	- ALGO:
	[1, 1, 2, 3, 5, 8]
	- define a method that takes an integer
	- create an array with with two integers, [1, 1]
	- begin loop that breaks when array size equals the integer input 
		- do interger index [-1] plues integer index [-2] and add the result to the end of the
			fib array
	- return the last digit of the dib array

=end

def fibonacci(num)
	fibonacci_sequence = [1, 1]
	until fibonacci_sequence.size == num
		fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
	end
	fibonacci_sequence.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001)