=begin
	- write a method that takes an integer
	- the integer represents the total number of switches
	- the integer also represents the number of repetitions
	- have the method return an array that idetifies which
	lights are on and which are off after `n` repetitions

EXAMPLE:
- input = 5
- round 1: [on, on, on, on, on] index ever 1

<first loop>
- round 2: [on, off, on, off, on] every second index starting at 1
- round 3: [on, off, off, off, on] every third index starting at 2
- round 4: [on, off, off, on, on]
- 5

- create an array the length of the input
- need every element to be 'on'


1.upto input integer
- we need to loop `n`(5) times -1 (this is because the
array is already created with everything on once)
- on the first loop 0 + 1 [index 1, 3, 5]
- second loop 0 + 3 + 3 [index 2, 5, 8]

ALGO:
	- define a method that takes an integer
	- create an array with the amount of elements as the input integer
		- make each element true

	- create an variable index start = 1
		- create a variable counter = 2
	-iterate over lights array
		- iterate over the array
			- starting at index 1, change every [counter] element to its opposite
		- end of loop
		- increment index start by 1
		- increment counter by 1

			#increment counter by couunter
		[index start at index 2, counter + 3]
		[index start at index 3, counter + 4]

	[true, false, false, false, true, false]

	index of lights on method
	create a results array
	- iterate over the array with index
		- if the current iteration is true, adds its index number + 1
		to the results array

=end

def lights_on(num_of_lights)
	lights_array = Array.new(num_of_lights, true)
	
	index_start = 1
	counter = 2

	(num_of_lights - 1).times do
		index = index_start
		increment = counter
		loop do
			lights_array[index] = !lights_array[index]
			index += increment
			break if index > num_of_lights - 1
		end
		index_start += 1
		counter += 1
	end

	position_of_on_lights(lights_array)
end

def position_of_on_lights(lights_array)
	result = []
	lights_array.each_with_index do |light, index|
		result << index + 1 if light
	end
	result
end

p lights_on(10)