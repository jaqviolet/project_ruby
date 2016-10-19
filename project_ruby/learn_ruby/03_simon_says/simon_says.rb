#write your code here

def echo (x)
		return x
end

def shout(x)
	return x.upcase
end

def repeat(x, p=2)
	return (x + " ")*(p-1)+x
end

def start_of_word(x, y=1)
	if y==1
		return x[0]
	else
	return x[0...y]
end
end

def first_word(x)
	return x.split[0]
end

public
def titleize(x)
	except = ["and", "the", "over"]
	arr=x.split(' ')
	
	arr.each { |w|
		w.capitalize! unless except.include?(w)}

arr[0].capitalize!
arr.join(' ')


	
end