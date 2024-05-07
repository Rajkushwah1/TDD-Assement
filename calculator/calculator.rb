class Calculator
	# Method to add numbers provided as a string input
	def add(input)
		# Check if the input string is empty
		if input.empty?
			# Return 0 if input is empty
			return 0 
		else
			# Find negative numbers in the input string
			negatives = input.scan(/-?\d+/).select { |num| num.to_i < 0 }
			# Raise an error if negative numbers are found
			raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
			# Calculate the result if no negative numbers are found
			calculate_result(input)
		end
	end

	private

	# Method to calculate the result of the addition operation
	def calculate_result(input)
		# Replace non-digit characters with commas and split the input string into an array of numbers
		input = input.gsub(/\s*\W+\s*/, ",").split(',').map(&:to_i)
		# Return the sum of the numbers
		return input.inject(&:+)
	end
end

# calculator = Calculator.new
# result = calculator.add('1,2,3')
# puts result # Output: 6
# calculator.add('')         # Output: 0
# calculator.add('1')        # Output: 1
# calculator.add('1,5')      # Output: 6
# calculator.add("1\n2,3")   # Output: 6
# calculator.add("//;\n1;2") # Output: 3
# calculator.add("-1,-2")  # Raises RuntimeError: Negative numbers not allowed: -1, -2