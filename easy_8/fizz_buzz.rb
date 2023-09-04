=begin
	- write ma ethod that takes two arguments
	- the first argument is the starting number
	- the second is the ending number
	- have the method print out all numbers starting from the starting number
	- if a number is divisible by 3, print 'Fizz'
	- if a number is divisible by 5, print 'Buzz'
	- if a number is divisble by 3 and 5, print 'FizzBuzz'

EXAMPLES:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


ALGO:
- define a method that takes two integers
- from the start number upto the second number, start loop
		- if current number is divisble by 3 and 5, print 'FizzBuzz'
		- if a number is divisible by 5, print 'Buzz'
		- if a number is divisible by 3, print 'Fizz'
		- otherwise, print the number
		end

=end

def fizzbuzz(start_num, end_num)
	result = []
	start_num.upto(end_num) do |num|
		if num % 3 == 0 && num % 5 == 0
			num = "FizzBuzz"
		elsif num % 5 == 0
			num = "Buzz"
		elsif num % 3 == 0
			num = "Fizz"
		end
		result << num
	end
	puts result.join(', ')
end


fizzbuzz(1, 15)