require "test_helper"

class Th::GeographyTest < Minitest::Test
  def test_geography_data
    assert Th::Geography.data.count > 0
  end
  def test_geography_find
    x = Th::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Geography)
  end
  def test_geography_find
    assert Th::Geography.find(1212313213212132131).nil?
  end
end
