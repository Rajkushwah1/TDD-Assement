class Calculator 
	def add(input)
		if input.empty?
			return 0 
		else
			negatives = input.scan(/-?\d+/).select { |num| num.to_i < 0 }
			raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
			calculate_result(input)
		end
	end

	private

	def calculate_result(input)
		input = input.gsub(/\s*\W+\s*/, ",").split(',').map(&:to_i)
		return input.inject(&:+)
	end
end