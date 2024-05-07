
# String Calculator

The Calculator class provides a method add to perform addition operations on strings representing numbers.


## Installation

No installation is required as this is a Ruby class that can be directly integrated into your Ruby projects.
    
## Usage/Examples

Instantiate the Calculator class and use the add method to perform addition operations. The add method takes a string input containing numbers separated by commas or new lines.
```javascript
calculator = Calculator.new
result = calculator.add('1,2,3')
puts result # Output: 6
calculator.add('')         # Output: 0
calculator.add('1')        # Output: 1
calculator.add('1,5')      # Output: 6
calculator.add("1\n2,3")   # Output: 6
calculator.add("//;\n1;2") # Output: 3
calculator.add("-1,-2")
```


## Features


- Addition of Numbers: Supports addition of numbers provided as a string input.
- Delimiter Handling: Handles different delimiters and new lines between numbers.
- Error Handling: Raises an error if negative numbers are passed as input.

## Contributing

`Contributions are welcome!` Feel free to fork this project, make improvements, and submit pull requests..


## License

This project is licensed under the MIT License. See the [LICENSE](https://choosealicense.com/licenses/mit/) 
