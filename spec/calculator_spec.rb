describe Calculator do
  it 'returns 0 for empty string' do 
    calculator = Calculator.new
    result = calculator.add('')
    expect(result).to eq(0)
  end

  it 'returns 1 for given argument is 1' do 
    calculator = Calculator.new
    result = calculator.add('1')
    expect(result).to eq(1)
  end

end

