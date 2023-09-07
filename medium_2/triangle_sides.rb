=begin
	- write a method that takes 3 numbers
	- have the method return a symbol for what type of triangle
	it is, :equailateral, :isosceles, :scalene, :invalid

EXAMPLES:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

conditions
:equilateral, all sides are the same
[3, 3, 3] 

:isoscele, 2 sides are of equal length, 3rd is different
[3, 3, 1.5]

:scalene, all 3 sides are different length
[3, 4, 5]

:invalid, two shortest sides must be greater than the
length of the longest side
[3, 1, 1]
[0, 3, 3]

ALGO:
	- define a method that takes 3 arguments
	- put the three arguments into an array
	- sort the array and save the largest number to a variable named long side
	- save the smallest number to shortest side and save the middle number to side 2

	- shortest side == 0 or side1 plus side2 < longest side
		- return :invalid
	- if short side, side 2, and longest side are equal
			- return :equilateral
	- if longest side and side 2 are equal 
		- return :isosceles
	- if shortest side does not equal middle or longest side 
		- return :scalene

=end

def triangle(num1, num2, num3)
	short_side, side_2, long_side = [num1, num2, num3].sort
	case
	when short_side == 0 || short_side + side_2 < long_side
		:invalid
	when short_side == side_2 && side_2 == long_side
		:equilateral
	when long_side == side_2
		:isosceles
	else
		:scalene
	end
end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid