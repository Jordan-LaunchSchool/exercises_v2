# delete_vowels.rb

=begin
- write a method that takes an array of strings
- have the method return an array of the same string values but with the vowels removed

ALGO:
- create a string of vowels
- define a method that that takes an array of strings
- iterate over each element of the array (map)
- have the block return the current element but with the vowels  removed
- return the array

=end


VOWELS = "aeiouAEIOU"

def remove_vowels(input_array)
	input_array.map {|element| element.delete(VOWELS)}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']