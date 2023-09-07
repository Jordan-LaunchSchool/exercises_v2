=begin
	- write a method that takes a single integer
	- have the method return the next featured number
	that is greater than the argument
	- return an error message if there is no next featured number

	featued number:
	- interger % 7 == 0
	- digits must be uniq, [1, 3, 3] is not a featured number
	ALGO:
	- define a method that takes an integer
	- begin a loop
		- input integer += 1
		- break the loop if the integer is divisible
		by 7 && digits are uniq && 
		- break the loop of digit size is greater then 9
			-output error message
	- end loop

	- return the integer

	UNIQ_DIGIT?:
	- define a method that takes an integer
		- break the integer into an array and
		call the uniq method, have the method returned
		to an integer and is if it is equal the input integer
		- return true or false
=end

def uniq_digit?(input_integer)
	input_integer.to_s.chars.uniq.join.to_i == input_integer
end


def featured(input_integer)
	loop do
		input_integer += 1
		case 
		when input_integer % 7 == 0 && input_integer.odd?
			return input_integer if uniq_digit?(input_integer)
		when input_integer.to_s.chars.size > 10
			break
		end
	end
	
	"There is no possible number that fulfills those requirements"
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)