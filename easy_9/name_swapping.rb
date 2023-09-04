=begin
	- write a method that takes a string
	- the string is a first name and a last name as a single string
	- have the method return a new string that is 
	Lastname, Firstname

EXAMPLE
	swap_name('Joe Roberts') == 'Roberts, Joe'

ALGO:
 - define a method that takes a string
 - split the string, save first and last name
 - output 'last name, first name'

=end

def swap_name(name)
	first_name, last_name = name.split
	"#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

