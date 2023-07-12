# cute_angles.rb

=begin
	- write a method that takes a floating point number
	- the number represents an angle between 0 - 360 degrees
	- have the method return a string in degrees, minutes and seconds.
	- use the ° symbol for degress, ' for minutes and " for seconds
	- a degree has 60 minutes while a minute has 60 seconds

	EXAMPLES:
	dms(30) == %(30°00'00")
	dms(76.73) == %(76°43'48")
	dms(254.6) == %(254°36'00")
	dms(93.034773) == %(93°02'05")
	dms(0) == %(0°00'00")
	dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
	DEGREE = "\xC2\xB0"

	ALGO:
	- define a method that takes a floating point number
	- create a degress variable and assign it the the first digits up until the decimal, using the convert to string and split methods
	- multiply the remaining decimals by 60 and assign the whole number to minutes and the remaining to seconds
	- multiply the remaining seconds by 60.
	- return a string with the degrees minutes and seconds formatted correctly.

=end

def dms(input_float)
	degrees  = input_float.to_s.split('.')[0]
	minutes, seconds = ((input_float - degrees.to_f) * 60).to_s.split('.')
	seconds = (seconds * 60).to_s[0, 2]
	p "%(#{degrees}°#{format("%02d", minutes)}'#{seconds})"
end






p dms(76.73) == %(76°43'48")