require("minitest/autorun")
require("minitest/rg")
require_relative("../house")

class TestHouse < MiniTest::Test

  def setup
    @house1 = House.new( {
      "id" => 100,
      "name" => "Gryffindor",
      "logo_locn" => "../images/Gryffindor.png"
    })
  end

  def test_name()
    result = @house1.name()
    assert_equal("Gryffindor", result)
  end

  def test_logo_locn()
    result = @house1.logo_locn()
    assert_equal("../images/Gryffindor.png", result)
  end
end
