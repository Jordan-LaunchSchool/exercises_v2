=begin
	- write a method that takes 2 arrays
	- have the method check if both arrays have the same elements
	with the same multiplicites. (multiplicity of a member is the same number
	of times it appears)
	- "same": that the elements in array 1 are the elements in array 2
	squared, regardless of order. 

EXAMPLES:
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true

ALGO:
	- write a method that takes two array
		- iterate over array_a, 
			- iterate over array_b,
				- does array_a count of element_a == the same count of array_b
				element_a * element_a, if not return false
=end

def comp(array_a, array_b)
	return false if array_a == nil || array_b == nil
	array_a.each do |element_a|
		return false unless array_a.count(element_a) == array_b.count(element_a * element_a)
	end
	true
end


a = nil
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
 # = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]


p comp(a, b)