require 'test/unit'
require '../app/string_calc'

class TestStringCalc < Test::Unit::TestCase

  def test_add_empty_string
    calc = StringCalc.new
    assert_equal 0, calc.add("")
  end
end
