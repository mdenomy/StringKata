require 'test/unit'
require '../app/string_calc'

class TestStringCalc < Test::Unit::TestCase

  def test_add_empty_string
    calc = StringCalc.new
    assert_equal 0, calc.add("")
  end

  def test_add_simple_number
    calc = StringCalc.new
    assert_equal 3, calc.add("3")
  end

  def test_add_two_numbers
    calc = StringCalc.new
    assert_equal 5, calc.add("3,2")
  end

  def test_add_several_numbers
    calc = StringCalc.new
    assert_equal 15, calc.add("1,2,3,4,5")
  end
end
