class Calculator 
	def add(input)
		if input.empty?
			return 0 
		else 
			input = input.gsub(/\s*\W+\s*/, ",").split(',').map(&:to_i)
			return input.inject(&:+)
		end
	end
end