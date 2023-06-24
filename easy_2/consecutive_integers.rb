#consecutive_integers.rb

def prompt(msg)
	puts "==>" + msg
end

prompt("Please enter an integer greater than 0")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
user_input = gets.chomp


if user_input == 's'
	sum_of_integers = (1..number).to_a.inject(:+)
	prompt("The sum of integers between 1 and #{number} is #{sum_of_integers}")
elsif user_input == 'p'
	product_of_integers = (1..number).to_a.inject(:*)
	prompt("The product of the integers betweem 1 and #{number} is #{product_of_integers}")
end