describe Calculator do
  it 'returns 0 for empty string' do 
    calculator = Calculator.new
    result = calculator.add('')
    expect(result).to eq(0)
  end
end

