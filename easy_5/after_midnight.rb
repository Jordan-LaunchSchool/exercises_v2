# after_midnight.rb

=begin
	- write a method that takes an integer/the time using minute-based formated and returns
	the time of the day in 24 hour format

	time_of_day(0) == "00:00"
	time_of_day(-3) == "23:57"
	time_of_day(35) == "00:35"
	time_of_day(-1437) == "00:03"
	time_of_day(3000) == "02:00"
	time_of_day(800) == "13:20"
	time_of_day(-4231) == "01:29"
	
	- one day is 1440 minutes
	-

	ALGO:
	- define a method that take an integer
	- divde the input integer by 60, save the quotient and the remainder as hours and minutes
	- multiply the minutes by 60 and round to the nearest whole integer

	- output a string with 'hours' + ':' + 'minutes
=end

def time_of_day(minutes_from_midnight)
	while minutes_from_midnight < 0
		minutes_from_midnight += 1440
	end
	while minutes_from_midnight > 1440
		minutes_from_midnight -= 1440
	end
	hours, minutes = minutes_from_midnight.divmod(60)
	"#{format("%02d", hours)}:#{format("%02d", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"