def translate text
	vowels = ['a', 'e', 'i', 'o', 'u']
	array = text.scan(/\w+/)
	result_array = []

	array.each do |word|
		if word[0] == word[0].upcase
			capital = true
		end

		if not vowels.include? word[0] and word[1] == 'q' and word[2] == 'u'
			first_letter = word[0].downcase
			second_letter = word[1].downcase
			third_letter = word[2].downcase
			word.delete! word[0..2]
			if capital
				result_array.push(word[0].upcase + word[1..-1] + first_letter + second_letter + third_letter + 'ay')
			else
				result_array.push(word + first_letter + second_letter + third_letter + 'ay')
			end
		elsif word[0] == 'q' and word[1] == 'u' 
			first_letter = word[0].downcase
			second_letter = word[1].downcase
			word.delete! word[0..1]
			if capital
				result_array.push(word[0].upcase + word[1..-1] + first_letter + second_letter + 'ay')			
			else
				result_array.push(word + first_letter + second_letter + 'ay')
			end
		elsif vowels.include? word[0]	
			if capital
				result_array.push(word[0].upcase + word[1..-1] + 'ay')
			else
				result_array.push(word + 'ay')
			end
		elsif not vowels.include? word[0] and not vowels.include? word[1] and not vowels.include? word[2]
			first_letter = word[0].downcase
			second_letter = word[1].downcase
			third_letter = word[2].downcase
			word.delete! word[0..2]
			if capital
				result_array.push(word[0].upcase + word[1..-1] + first_letter + second_letter + third_letter + 'ay')
			else
				result_array.push(word + first_letter + second_letter + third_letter + 'ay')
			end
		elsif not vowels.include? word[0] and not vowels.include? word[1]
			first_letter = word[0].downcase
			second_letter = word[1].downcase
			word.delete! word[0..1]
			if capital
				result_array.push(word[0].upcase + word[1..-1] + first_letter + second_letter + 'ay')
			else
				result_array.push(word + first_letter + second_letter + 'ay')
			end
		else
			first_letter = word[0].downcase
			word.delete! word[0]
			if capital
				result_array.push(word[0].upcase + word[1..-1] + first_letter + 'ay')
			else
				result_array.push(word + first_letter + 'ay')
			end
		end
	end 
	result_array.join(' ')
end