class StringCalc

  def add(input)
    number = input.scan(/\d/)
	return number[0].to_i
  end
end