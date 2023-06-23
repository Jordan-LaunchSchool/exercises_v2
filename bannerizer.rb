# bannerizer.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that take a string
	- have the method print out the string surrounded by a box

  -- Input: -- 
	- string

  -- Output: -- 
	- string

  RULES:

    -- Explicit: --
		-


    -- Implicit: -- 
		-

=> EXAMPLES <=
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

=> DATA STRUCTURES <=
	

=> ALGORITHM <=
	- define a method that takes a string
	- create a variable assigned the to character length of the string

	- create and output box
		- top line: '+-' ('-' multiplied by the number of characters in the msg)'-+'
		- second row: '|' (' ' multiplied by the number of character in the msg) '|'
		- middle/msg row: `| ` (plus the message) ` |`
		- third row (same as the second): '|' (' ' multiplied by the number of character in the msg) '|'
		- bottow row (same as the top): '+-' ('-' multiplied by the number of characters in the msg)'-+'

=> CODE <=

=end

def print_in_box(input_message)
	msg_size = input_message.size

	p '+-' +  '-' * msg_size + '-+' #top row
	p '| ' + ' ' * msg_size + ' |' #second row
	p '| ' + input_message + ' |'
	p '| ' + ' ' * msg_size + ' |' 
	p '+-' +  '-' * msg_size + '-+'

end

	
print_in_box('To boldly go where no one has gone before.')
print_in_box('hello')