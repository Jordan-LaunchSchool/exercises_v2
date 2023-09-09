=begin
	- write a method that takes a string
	- have the method return the same sequence of characters
	- have the method modify every third word
	- every third word should have its second character
	coverted to upcase
	- all other characters should remain the same

EXAMPLES:
to_weird_case('It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'

ALGO:

- write a method that takes a string
-	 split the string into an array of words
- iterate over each word with index
	- if the current index is referencing the third word, (index + 1 % 3 == 0)
			- iterate over the current words characters, use map to return the desired character, use each
				index to access the characters
				- if the current index is odd, return an upcase version of the 
					current character

- join the array eleme


=end

require 'pry'

def second_char_upcase(input_string)
	result = input_string.chars.map.with_index do |char, index|
		index.odd? ? char.upcase : char
	end
	result.join
end

def to_weird_case(input_string)
	result = []
	input_string.split.each_with_index do |word, index|
		if (index + 1) % 3 == 0
			result << second_char_upcase(word)
		else
			result << word
		end
	end

	result.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'