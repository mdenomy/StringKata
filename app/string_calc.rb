class StringCalc
  @input
  def add(input)
    @input = input
	validate
	sum
  end
  
  private
  
  def sum
	value = 0
    numbers = @input.strip.scan(/\d/)
	numbers.each { |n| value += n.to_i }
	return value
  end
  
  def validate
	check_terminator("\n")
	check_terminator(",")
  end

  def check_terminator(delim)
	if @input.end_with? delim
	    raise ArgumentError, "Ends with newline"
	end
  end
end