class StringCalc

  def add(input)
	value = 0
	check_format(input)
    numbers = input.strip.scan(/\d/)
	numbers.each { |n| value += n.to_i }
	return value
  end
  
  def check_format(input)
	if input.end_with? "\n"
	    raise ArgumentError, "Ends with newline"
	end
  end
end