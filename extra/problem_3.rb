=begin
	- write a method that takes a string
	- have the method retuyrn the same sequence of characters with
	every second character in every third word coverted to upcase
	- other characters should remain the same

EXAMPLES:
to_weird_case('aaA bB c') == 'aaA bB c'
[aaA, bB, c]
1, 2, 3
second character

[['It is a'], []'long established fact'], []'that a reader'], ['will be distracted']]

ALGO:
- define a method that takes a string
- create a sub_arrays array

- split the string into words
- set a counter to 2 to access index
- iterate over each word
	- add to sub array[0, 3] firt 3 words to sub array
	- add three counter
[It is a, long established fact, that a reader, will be distracted]

- iterate ove the sub arrays
	- break if element == nil
	- subarray last [2] (third word) ('f, a, c, t')
		- iterate over sub array characters with index
			- if index is odd?
				change the character to character.upcase!

=end

# def to_weird_case(input_string)
# 	sub_arrays = []
# 	words_array = input_string.split

# 	counter = 0
# 	loop do 
# 		sub_arrays << words_array[counter, 3]
# 		counter += 3
# 		break if counter >= words_array.size
# 	end

# 	sub_arrays.each do |sub_array|
# 		break if sub_array[2] == nil
# 		result = ''
# 		counter = 0
# 		sub_array[2].each_char do |char|
# 			if counter.even?
# 				result << char
# 			else 
# 				result << char.upcase
# 			end
# 			counter += 1
# 		end
# 		sub_array[2] = result
# 	end


# 	sub_arrays.join(' ')
# end

def to_weird_case(input)
  words = input.split(' ')
  result = []

  words.each_with_index do |word, index|
    if (index + 1) % 3 == 0
      result << word.chars.each_with_index.map { |char, i| i.odd? ? char.upcase : char }.join
			p word.chars.each_with_index.map { |char, i| i.odd? ? char.upcase : char }.join
    else
      result << word
    end
  end

  result.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS' 