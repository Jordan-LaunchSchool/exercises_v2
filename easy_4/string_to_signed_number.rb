# string_to_signed_number.rb

DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}


def string_to_integer(input_string)
	digit_array = input_string.chars
	digit_array
	value = 0

	digit_array.each do |number|
		value = 10 * value + DIGITS[number]
	end
	
	value
end

def string_to_signed_number(input_string)
	if input_string[0] == '-'
		return -string_to_integer(input_string[1..-1])
	elsif input_string[0] == '+'
		return string_to_integer(input_string[1..-1])
	else
		string_to_integer(input_string)
	end
end


p string_to_signed_number('4321') == 4321
p string_to_signed_number('-570') == -570
p string_to_signed_number('+100') == 100
