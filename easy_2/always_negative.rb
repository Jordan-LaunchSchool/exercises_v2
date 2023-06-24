# always_negative.rb

def negative(input_integer)
	return -input_integer if input_integer > 0
	input_integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  