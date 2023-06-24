# how_big_is_the_room.rb

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

sq_meters = length * width
sq_feet = sq_meters * 10.7639

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} sqaure feet)"