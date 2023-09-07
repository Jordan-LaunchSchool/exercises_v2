=begin
	- register should be zero
	

	EXAMPLES:
	minilang('PRINT')
	- prints the register value

	minilang('5 PUSH 3 MULT PRINT')
	input 5
	- register: [5]
	- stack: []

	input PUSH
	- PUSH: push the register value on the the stack. Leave the value in the register
	- register: [5]
	- stack: [5]
	
	input 3
	- register: [3]
	- stack: [5]

	input MULT
	- Pops a value from the stack and multiplies it by the register value, storing the result in the register.
	- register: [3] * 5(stack) [15]
	- stack: [0]

	PRINT: 
	- 

	MINI_LANG ALGO:
	- define the minilang method that takes a string as an input
	- define digit strings array
	- initialise an empty stack array
	- initialised a register variable equal to 0
	
	- split this input string into an array - ['5', 'PUSH', '3', 'MULT', 'PRINT']
	- iterate over the array
		- if the current iteration is included in the digit string array, convert it to an integer and add
			it to the register
		- if the current iteration is the word 'PUSH', 
			copy the value from the register into the stack array
		- if the current iteration is 'MULT'
			have the register assigned to the return value 
			of the mult method (stack * register)
			and remove the value of the stack
		- if the current iteration is 'PRINT'
			puts the register



=end

def minilang(instructions)
	
	stack = []
	register = 0
	instructions.split.each do |element|
		case element
		when 'PUSH'
			stack << register
		when 'MULT'
			register *= stack.pop
		when 'PRINT'
			puts register
		when 'ADD'
			register += stack.pop
		when 'POP'
			register = stack.pop
		when 'DIV'
			register /= stack.pop
		when 'MOD'
			register = register % stack.last
		when 'SUB'
			register -= stack.pop
		else
			register = element.to_i
		end
	end
	
end

minilang('6 PUSH')