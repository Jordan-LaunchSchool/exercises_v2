=begin
	- write a method that takes a string
	- the method should return the same string
	- have the method convert word digits into numerical digits

EXAMPLE:
word_to_digit('Please call me at five five five one two three four. Thanks.') 
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'	

ALGO:
	-define a method that takes a string
	- create an digit string array, [one, two, three...]
	- split the string into an array of words
	- if the current word is included in the digit string array
		replace the current word with its index number converted to a string
		using gsub!
	- return the string
=end


# def word_to_digit(input_string)
# 	digits_as_words = %w(zero one two three four five six seven eight nine)
# 	input_string.split.each do |word|
# 		if digits_as_words.include?(word)
# 			input_string.gsub!(/\b#{word}\b/, "#{digits_as_words.index(word)}")
# 		end
# 	end
# 	input_string
# end

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') # == 'Please call me at 5 5 5 1 2 3 4. Thanks.'	