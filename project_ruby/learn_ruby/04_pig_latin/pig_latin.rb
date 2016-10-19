#write your code here
def translate(x)
	
	words=x.split
	array=[]
	vowels=["a","e","i","o","u"]
	
	words.each do |w|
	# if starts with vowels
	if vowels.include?(w[0])
			array.push "#{w}ay"
	# if starts with consonants
		else 
			# words starts qu
			if w[0]=="q" && w[1]=="u"
				array.push "#{w[2..-1]}#{w[0..1]}ay"
			# words starts 1 consonant followed by qu
			elsif w[1]=="q" && w[2]=="u"
				array.push "#{w[3..-1]}#{w[0..2]}ay"
			#first letter consonant only
			elsif vowels.any? {|v| v==w[1]} 
					array.push "#{w[1..-1]}#{w[0]}ay" 
				#second letter consonant
			elsif vowels.any? {|v| v==w[2]}
				array.push "#{w[2..-1]}#{w[0..1]}ay"
				#third letter consonant
			elsif vowels.any? {|v| v==w[3]}
				array.push "#{w[3..-1]}#{w[0..2]}ay"
			end
		end
	end
	return array.join(' ')
end
