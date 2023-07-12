# spin_me_around.rb

=begin
 - given a method that takes a string and returns a new string that contains the same words
 but with each character reversed. Given the methods implmentations, will the returned string be the same
 object as the one passed in as an argument or a different object?



=end


def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"