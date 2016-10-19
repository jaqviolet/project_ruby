class Book
attr_accessor :title
array=[]

=begin
	first letter
	all words
	not:the,a,an,and,in,of
	always first word

=end
	def title
    words = @title.split
    	words.map do |word|
		not_capital = ["and", "in", "the", "of", "a", "an"]
		    unless (not_capital.include? word)
		    word.capitalize!
			end
		end
	words[0].capitalize!
	return words.join(' ')
	end
end	