describe Calculator do

  #before all runs the block one time before all of the examples are run
  
  before :all do
    @calculator = Calculator.new
  end

  it 'returns 0 for empty string' do 
    result = @calculator.add('')
    expect(result).to eq(0)
  end

  it 'returns 1 for given argument is 1' do 
    result = @calculator.add('1')
    expect(result).to eq(1)
  end

  it 'Returns the result of addition operation for given argument' do 
    result = @calculator.add('1,1')
    expect(result).to eq(2)
  end

  it 'returns the result and handle new lines between numbers' do 
    result = @calculator.add("1\n2,3")
    expect(result).to eq(6)
  end

  it 'should support different delimeter "//[delimiter]\n[numbers…]"' do 
    result = @calculator.add("//;\n1;2")
    expect(result).to eq(3)
  end

  it 'should raised an error if negative numbers is passed' do
    expect { @calculator.add("-1,-2") }.to raise_error(RuntimeError, "Negative numbers not allowed: -1, -2")
  end
end

 