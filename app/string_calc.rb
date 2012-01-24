class StringCalc

  def add(input)
    numbers = input.scan(/\d/)
	value = 0
	numbers.each { |n| value += n.to_i }
	return value
  end
end