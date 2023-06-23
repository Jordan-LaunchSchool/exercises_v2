# madlibs.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- create a program that prompts for a noun, a verb, an adverb and an adjactive
	- have the program output a string that injects each item into a story.

  -- Input: -- 
	- 4 different strings

  -- Output: -- 
	- a string - a sentence

  RULES:

    -- Explicit: --
		-


    -- Implicit: -- 
		-

=> EXAMPLES <=
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

=> DATA STRUCTURES <=
	

=> ALGORITHM <=
	- Ask for user input, a noun
	- ask user for input, a verb
	- ask user input for an adjective
	- user input for an adverb

	- with string interpolation, output:
	"Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"


=> CODE <=
=end

puts "Enter a noun: "
noun = gets.chomp

puts "Enter a verb: "
verb = gets.chomp

puts "Enter an adjective: "
adjective = gets.chomp

puts "Enter an adverb: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"