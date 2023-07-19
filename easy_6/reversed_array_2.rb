# reversed_array_2.rb

=begin
	- write a method that takes an array
	- have the method return a new array with the elements of the original list in reverse order
	- do not modify the originial list

=end

def reverse(array)
	array = array.dup
	iterator = array.size / 2
	counter = 1
	iterator.times do |index|
		array[index], array[-counter] = array[-counter], array[index]
		counter += 1
	end
	array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true