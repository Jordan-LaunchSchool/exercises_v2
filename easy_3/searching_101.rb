# searching_101.rb

first_five_numbers = []

def prompt(msg)
	puts "==> " + msg
end

def last_number_check(number_array, last_number)
	number_array.include?(last_number) ? 'does appear' : 'does not appear'
end

prompt("Enter the first number: ")
first_five_numbers << gets.chomp.to_i

prompt("Enter the second number: ")
first_five_numbers << gets.chomp.to_i

prompt("Enter the third number:")
first_five_numbers << gets.chomp.to_i

prompt("Enter the fourth number: ")
first_five_numbers << gets.chomp.to_i

prompt("Enter the fifth number: ")
first_five_numbers << gets.chomp.to_i

prompt("Enter the last number: ")
last_number = gets.chomp.to_i

prompt("The number #{last_number} #{last_number_check(first_five_numbers, last_number)} in #{first_five_numbers}.")

