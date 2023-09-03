=begin
Write a method that counts the number of occurrences of each element in a given array.
The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each 
element alongside the number of occurrences.

EXAMPLES:
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

ALGO:
- write a method that takes an array
- have the method count the number of occurences of each element in a given array
	- create an empty hash
	- iterate over the input array
		- if the current word exists in the array add + 1 to the value
		- if the current word doesnt exist, add the word as the key and with 1 as the value
- have the method print out the hash

=end

def count_occurrences(input_array)
	result_hash = {}
	input_array.each do |word|
		if result_hash.has_key?(word)
			result_hash[word] += 1
		else
			result_hash[word] = 1
		end
	end

	result_hash.each do |k, v|
		puts "#{k} => #{v}"
	end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)