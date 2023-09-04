=begin
	- write a method that takes an integer
	- have the method return an array of integers between 1 and the argument

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

ALGO:
	- define a method that takes an integer
	- range from 1..input_integer.to_a

=end

def sequence(input_integer)
	(1..input_integer).to_a
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]