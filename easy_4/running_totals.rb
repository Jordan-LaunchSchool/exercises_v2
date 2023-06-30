=begin
	PROBLEM:
		- write a method that takes an array and returns an Array with the same numbers of elements,
		and each element has the running total for orignal array



		ALGORITHM:
		- define a method that takes an array
		- initialise an empty result array
		- initialise a running_total variable and assign it to 0
		- iterate over the array, add the result of the current iteration plus the count variable to the 
		result array
		- increase the runnin_total by the amount added to the result array


		- JUST PUT WORDS DOWN THAT COME TO YOU, DONT TRY TO SOLVE THE PROBLEM OR WRITE IN ENGLISH
		- AND THEN BUILD AND ALGO REFERRING BACK TO YOUR KEYWORDS THAT YOU WROTE DOWN! TURN OFF NOTIFICATIONS ON WATCH

=end


def running_total(input_array)
	running_total = 0
	input_array.map { |number| running_total += number }
end


p running_total([2, 5, 13]) # == [2, 7, 20]
