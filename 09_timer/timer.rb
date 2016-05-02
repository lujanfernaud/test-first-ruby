class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		Time.at(@seconds).utc.strftime("%H:%M:%S")
	end

	def padded num
		if num < 10
			'0' + num.to_s
		else
			num.to_s
		end
	end

end