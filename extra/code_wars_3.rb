=begin
	- write a method that takes 2 string inputs
	- arg1 is a text that needs to be searched
	- arg2 is the search text

	- have the method return the number of times the
	search text is found within the full text

EXAMPLES:
search_text('aaa', 'aa') == 1
[0, 2] == 'aa' => true => if true, remove the 
	'aa' from the string and restart the loop, add 1 to the count
[1, 2] == 'aa' => true

search_text('abcdeb','b') == 2
[0, 1] == 'b' => false
[1, 1] == 'b' => true => + 1 to count
[2, 1] == 'b' .....

search_text('abcdeb', 'a') == 1
search_text('aa_bb_cc_dd_bb_e', 'bb' == 2
	[4, 2] == 'bb' => true => +1 to count


search_text('abbc', 'bb') == 1

ALGO:
	- write a method that takes two strings, 
	full_text and search_text
	- create a shallow copy of input string
	- create an occurences variable equal to 0
	- create a finished looping variable set to false
	- begin an outter loop
		- begin iterating over the input array with index
			- if the current index upto search_text size - 1, use block parameter for index
				== search_text, remove the 2 characters from the string
				add 1 to the occurences sum
				- break out of the loop
			- if the current index == array.size - 1
				finished loop eqauls true
			end
		- break the outter loop of finished looping equals true	
		end

	- return the occurences sum

=end

def search_text(full_text, search_text)
	search_text_result = 0
	finished_search = false

	while finished_search == false
		full_text.chars.each_index do |index|
			if full_text[index, search_text.size] == search_text
				search_text_result += 1 
				full_text = full_text.sub(search_text, '')
				break
			elsif index >= full_text.size - 1
				finished_search = true
			end
		end
	end
	search_text_result
end


p search_text('aaa', 'aa') == 1
p search_text('abcdeb','b') == 2
p search_text('abcdeb', 'a') == 1
p search_text('aa_bb_cc_dd_bb_e', 'bb') == 2
p search_text('abbc', 'bb') == 1