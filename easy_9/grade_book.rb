=begin
 - write a method that takes 3 integers
 - have the method determine the average of the score
 and return a letter value associated with the grade

90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


ALGO:
	- write a method that takes three integers
	- calculate the average of the three to return an integer
	- case the average
		- when between 100 and 90
			return "A"
	....

	- average grade method takes 3 integers
		- divide the sum of the integers by the number of integers
		[int1, int2, int3].sum / number of ints
	
=end

def get_grade_average(grade1, grade2, grade3)
	grades = [grade1, grade2, grade3]
	grades.sum / grades.size
end

def get_grade(grade1, grade2, grade3)
	grade_average = get_grade_average(grade1, grade2, grade3)

	case
	when grade_average.between?(90, 100)
		"A"
	when grade_average.between?(80, 89)
		"B"
	when grade_average.between?(70, 79)
		"C"
	when grade_average.between?(60, 69)
		"D"
	when grade_average.between?(0, 59)
		"F"
	end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"