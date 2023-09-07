=begin
	- write a method that takes an array
	- have the method bubble sort the array
	- mutate the array that is passed to it
	- can assume the array will always have 2 elements


	ALGO:
	- define a method that takes an array
	
	- begin a loop
		create a variable called swaps that is equal to true
		- iterate over the array with index
			- if the current iteration is greater than the next iteration
					- swap the current iteration with the next iteration
					- swap equals true
				-end
		- break the loop if swap equals false


=end

def bubble_sort!(input_array)

	loop do
		swap = false
		1.upto(input_array.size - 1) do |index|
			if input_array[index - 1] > input_array[index]
				input_array[index - 1], input_array[index] = input_array[index], input_array[index - 1]
				swap = true
			end
		end
		break if swap == false
	end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)