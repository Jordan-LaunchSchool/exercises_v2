=begin
	- write a method that returns the number of friday
	13ths in the year given by an argument
	- year greater than 1752

EXAMPLES:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

ALGO:
	- define a method that takes a year
		- create a friday_13ths variable
		- start a loop that runs 365 times
			- if the current day is a friday, and the 
				day is the 13th, add 1 to the friday_13th variable
		
		return the friday 13th variable

=end

require 'date'

def friday_13th(year)
	friday_13ths = 0
	1.upto(365) do |day|
		if Date.ordinal(year, day).day == 13 && Date.ordinal(year, day).friday?
			friday_13ths += 1
		end
	end
	friday_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2