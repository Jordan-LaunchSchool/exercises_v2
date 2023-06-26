# palindromic_string_part2.rb
=begin
 - define a method that takes a string
 - remove all non-alphanumeric characters
 - downcase the input
=end

def real_palindrome?(input_string)
	input_string = input_string.downcase.delete('^a-z0-9')
	input_string == input_string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false