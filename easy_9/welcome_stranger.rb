=begin
	- write a method that takes two arguments, an array and a hash
	- the array contains 2 or more elements that will produce the persons name
	- the hash contains two keys, :title and :occupation with values
	- have the method return a greet that uses the persons full name and mentions
	the title and occupationg
=end

def greetings(name_array, occupation_hash)
	puts "Hello, #{name_array.join(' ')}! Nice to have a #{occupation_hash[:title]} #{occupation_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."