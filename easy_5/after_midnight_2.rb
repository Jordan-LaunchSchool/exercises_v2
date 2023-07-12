# after_midnight_2.rb

=begin
	- write two methods that each take time of the 24 hour format
	- have one of the method return before midnight and the otherafter midnight

	-examples:
	after_midnight('00:00') == 0
	before_midnight('00:00') == 0
	after_midnight('12:34') == 754
	before_midnight('12:34') == 686
	after_midnight('24:00') == 0
	before_midnight('24:00') == 0
	


	ALGO: (after midnight)
	- define a minutes in an hour constant = 60
	- write a method that takes a time as a string.
	- convert the first two characters into an integer
	multiply it by minutes in an hour and assign it to a variable named hours as minutes
	- convert the last two characters into integers and assign it to minutes
	- add the hours and the minutes together and return the result



=end

MINUTES_IN_ONE_HOUR = 60
MINUTES_IN_A_DAY = 1440

def after_midnight(input_time)
	if input_time[0, 2] == '00' || input_time[0, 2] == '24'
		return 0
	end
	hours_as_minutes = input_time[0, 2].to_i * MINUTES_IN_ONE_HOUR
	minutes = input_time[-2, 2].to_i
	hours_as_minutes + minutes 
end

def before_midnight(input_time)
	return 0 if after_midnight(input_time) == 0
	MINUTES_IN_A_DAY - after_midnight(input_time)
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0