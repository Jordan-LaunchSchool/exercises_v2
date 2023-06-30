# century.rb
=begin
PROBLEM:
	- write a method that takes a year as input and returns the century
	- the return value is a string that begins with the century number and
ends with st, nd, rd or th as appropriate for that number.

EXAMPLES:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

ALGO:
- write a method that takes an integer, the year
- convert the input year to a float
- divide the year by 99 and round up to the neareast whole number to get the century
	- use the .ceil method to round up to the near whole number to get the century
	- assign the result to a variable

- convert the result integer to an integer and then a string
- concat the final suffix
- if the second last character == 1
	- suffix `th`
	-otherwise
		case the last character
			- when 1, concat 'st' 
			- when 2, concat 'nd'
			- when 3, concat 'rd'
			- when 4..9 or 0 concat 'th'
			

- return the string

EXAMPLES:
- 1st, 2nd, 3rd, 4th, 5th, 113th, 11th, 12th, 22nd, 


=end



def century(year)
	year_string = (year + 99) / 100
	year_string = year_string.to_s
	suffix = 'th'

	unless year_string[-2] == '1' 
		suffix = case year_string[-1]
						 when '1'
						 	'st'
						 when '2'
						 	'nd'
						 when '3'
						 	'rd'
						 else
						 	suffix
						 end
	end

	year_string + suffix
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'