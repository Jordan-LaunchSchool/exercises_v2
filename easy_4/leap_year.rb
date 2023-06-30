=begin
PROBLEM:
	- write a method that takes the year
	- have the method return true if it is a leap year, otherwise false
	
	- A leap year is any year that is divisible by 4, unless the year is also divisible by 100
	- If the year is divisible by 100, then it is not a leap year unless the year is evenly divisible 
	by 400

ALGO:
	- write a method that takes an integer, the year
	- if divisble by 400 and 100 

EXAMPLES:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
=end

# if div by 4 leap year == true
# if it ends in 00, has to be divisible by 400 and 100 
# divisbile by 4 but not 100 or divisible by 100 and 400

def leap_year?(year)
	if year % 4 == 0 && year % 100 != 0
		true
	elsif	year % 100 == 0 && year % 400 == 0
		true
	else
		false
	end
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true