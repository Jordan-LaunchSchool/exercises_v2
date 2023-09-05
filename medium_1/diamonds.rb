=begin
	- write a method that takes an integer
	- have the method return a string of stars that represent a diamond
	- the input integer represents how many lines
	- the input integer also equal the amount of stars
	in the widest part of the diamond

	diamond(3)

 *      
***    			
 *

--------
diamond(9)

    * 		(4) spaces + (1)star = 5 chars
   ***		(3) spaces + (3)stars = 6 chars	
  *****		(2) spaces + (5)stars = 7 chars
 *******	(1) spaces + (6)stars = 8 chars
********* (0) spaces + (9) stars = 9 chars
 *******
  *****
   ***
    *

first_line_spaces = input integer / 2
first half of lines always equals ^^ input integer / 2
spaces = [4, 3, 2, 1, 0]
stars = [1, 3, 5, 6, 9]
amount of stars in first line = 1 (next line + 2), (next line + 2)

ALGO:
	CREATE ARRAY PATTERN AS ARRAY
	- define a method that takes an integer
	- create an array begining from (input integer / 2) down to 0 called spaces
	- create a stars array starting from 1 up to input integer but
	with each element increment by to untl the input integer
	
	DIAMOND TOP AND MIDDLE
	- iterate over the spaces array, 
		- iterate over the stars array 
			- output spaces * spaces array
			- output stars * stars array

	DIAMOND BOTTOM
	- reverse the spaces and star array and iterate over them both
		- if the spaces == 0 go to next iteration as the middle of the diamond
			is already complete
		- output the same as before


=end
def initialise_spaces_array(num_of_stars)
	(0..(num_of_stars / 2)).to_a.reverse
end

def initialise_stars_array(num_of_stars)
	stars = []
	1.upto(num_of_stars) do |num|
		stars << num if num.odd?
	end
	stars
end



def diamond(num_of_stars)
	spaces = initialise_spaces_array(num_of_stars)
	stars = initialise_stars_array(num_of_stars)
	puts ""
	#top half and middle of diamond
	stars.each_with_index do |stars, index|
		puts (" " * spaces[index]) + ("*" * stars)
	end

	#bottom half of diamond
	stars = stars.reverse
	spaces = spaces.reverse
	stars.each_with_index do |stars, index|
		next if index == 0
		puts (" " * spaces[index]) + ("*" * stars)
	end
	puts " "
end

diamond(9)