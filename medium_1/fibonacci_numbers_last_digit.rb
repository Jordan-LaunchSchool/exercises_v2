def fibonacci(num)
	fibonacci_sequence = [1, 1]
	until fibonacci_sequence.size == num
		fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
	end
	fibonacci_sequence.last
end

def fibonacci_last(num)
	fibonacci(num).to_s[-1].to_i
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)  
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789)