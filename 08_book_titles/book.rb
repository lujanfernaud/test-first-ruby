class Book

	attr_accessor :title

	def title
		array = @title.scan(/\w+/)
		word_stop = ['a', 'an', 'in', 'on', 'at', 'of', 'and', 'the']
		final_title = []

		array.each do |word|
			if final_title.include? word.capitalize and word_stop.include? word and word == array[0]
				final_title.push word
			elsif word_stop.include? word and word == array[0]
				final_title.push word.capitalize
			elsif word_stop.include? word
				final_title.push word
			else
				final_title.push word.capitalize
			end
		end

		final_title.join(' ')

	end

end