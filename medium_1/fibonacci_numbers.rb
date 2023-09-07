=begin
	- write a recursive method that computes the `nth` fibonacci number
	- `nth` is the argument to the method


	FIB:
	- a sequence of numbers startign with 1 and 1
	where each number is the sum of the two previous numbers
	[1, 1, 2, 3, 5]



=end

def fib(number)
	if number < 2
		number
	else
		fib(number - 1) + fib(number - 2)
	end
end

p fib(50)