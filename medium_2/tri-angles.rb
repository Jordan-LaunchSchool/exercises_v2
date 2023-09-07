=begin
	- write a method that takes 3 angles
	- have the method return a symbol depending what type of triangle it is

	TRIANGLE:
	- right: one angle of the triangle is 90
	- acute: all 3 angles of the triangle are less than 90
	- obtuse, one angle is greater than 90

	algo:
	- define a method that takes 3 numbers
	- put the numbers in an array and sort them
	- save angle1, angle2, and angle3 to variable from smallest to largest

	- if the sum of all sides is less than 180 or include
		return invalid
	- if angle3 is == 90
			return :right
	- if angle3 is > 90
			return :acute
	- otherwise return obtuse

=end


def triangle(num1, num2, num3)
	angle1, angle2, angle3 = [num1, num2, num3].sort

	case
	when [angle1, angle2, angle3].include?(0), [angle1, angle2, angle3].sum != 180
		:invalid
	when angle3 == 90
		:right
	when angle3 > 90
		:obtuse
	else
		:acute
	end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid