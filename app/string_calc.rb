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
    numbers = @input.strip.scan(/-?\d*/)
	  numbers.each do |n|
      if n.to_i < 0 then raise ArgumentError, "Don't be negative" end
      value += n.to_i
    end
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