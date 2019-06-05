require("minitest/autorun")
require("minitest/rg")

require_relative("../student")

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new( {
      "id" => 100,
      "first_name" => "Harry",
      "last_name" => "Potter",
      "house" => "Gryffindor",
      "age" => "12"
    })
  end

  def test_first_name()
    result = @student1.first_name()
    assert_equal("Harry", result)
  end

  def test_last_name()
    result = @student1.last_name()
    assert_equal("Potter", result)
  end

  def test_house()
    result = @student1.house()
    assert_equal("Gryffindor", result)
  end

  def test_age()
    result = @student1.age()
    assert_equal(12, result.to_i)
  end

end
