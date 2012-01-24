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

end
