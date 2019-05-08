def reverse_words(sent)

	parts = sent.split("").reverse!.join("")
	reversed = parts.split(" ").reverse!.join(" ")

 	return reversed
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


#  TEACHER SOLUTION

# def reverse_words(sent)
#   words = sent.split(" ")
#   new_words = []
#   words.each { |word| new_words << word.reverse }
#   new_sent = new_words.join(" ")
#   return new_sent
# end