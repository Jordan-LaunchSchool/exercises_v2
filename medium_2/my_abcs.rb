=begin
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

- write a method that takes a string
- have the method return true or false if a word can be spelt with
the given block
- the word is not case sensitive

input: 'BATCH' == true
[B, O]
input: 'BUTCH' == false
[BO], [HU], [GT], 

- create an array with both letters
- iterate over the nested array,
	- if the letters of the current iteration are both
		in the input string (upcased), the count will represent 2, in which case return
			false
	- otherwise return true

=end

def block_word?(input_string)
	paired_letters = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

	paired_letters.each do |pair|
		return false if input_string.upcase.count(pair) == 2
	end
	true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

