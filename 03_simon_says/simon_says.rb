def echo arg
	arg
end

def shout arg
	arg.upcase
end

def repeat arg, t=2
	array = []
	rounds = 0

	while rounds < t
		array.push arg
		rounds += 1
	end

	array.join(' ')
end

def start_of_word word, number
	word[0..number-1]
end

def first_word text
	array = text.scan(/\w+/)
	array[0]
end

def titleize text
	array = text.scan(/\w+/)
	word_stop = ['a', 'in', 'on', 'at', 'or', 'the', 'and', 'over']
	capitalized_array = []

	array.each do |word|
		if word_stop.include? word and capitalized_array.include? word.capitalize
			capitalized_array.push word.downcase
		elsif word_stop.include? word and word == array[0]
			capitalized_array.push word.capitalize
		elsif word_stop.include? word 
			capitalized_array.push word.downcase
		else	
			capitalized_array.push word.capitalize
		end
	end
	
	capitalized_array.join(' ')
end