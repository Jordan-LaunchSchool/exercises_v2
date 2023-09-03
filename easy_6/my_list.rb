# my_list.rb

=begin
	- write a method that takes an array and a search value as an argument
	- have the method return true if the seaarch value is in the array or false if not
	- the include? method may not be used
	
	ALGO:
	- define a method that takes an array and a search value
	- iterate over the array
		- if the current iteration is equal to the search value, return true
	

	- otherwise, return false

=end

def include?(input_array, search_value)
	input_array.each do |element|
		return true if element == search_value
	end
	false
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false