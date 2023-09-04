=begin
	- write a method that takes an array (grocery list)
	- have the method convert the list into an array
	- the array should contain the same number of elements
	as there are numbers of items in the input array

EXAMPLES:
	buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

ALGO:
	- define a method that takes an array
	- create a result array
		- iterate over the input array
			- return the first element as many times as the second element

=end


def buy_fruit(grocery_list)
	result = []
	grocery_list.each do |item, quantity|
		quantity.times do
			result << item
		end
	end

	result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]