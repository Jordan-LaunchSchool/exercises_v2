# leap_years_2.rb

=begin
PROBLEM:
 - rewrite the leap year method from the previous exercise to determine leap
 years before and after 1752

 ALGO:
 - define a method that takes the year
 - is the year prior to 1752?
		- if yes, is the year divisble by 400 or is the year divisbile by 4 but not 100
		- if no, is the year divisble by 4?


=end

def leap_year?(year)
	if year > 1752
		year % 400 == 0 || year % 4 == 0 && year % 100 != 0
	else
		year % 4 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true