# tip_calculator.rb

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = (bill * tip_percent) / 100
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"

