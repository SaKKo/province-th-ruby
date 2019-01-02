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
  def test_geography_provinces
    x = Th::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Geography)
    assert x.provinces.count > 0
    assert x.provinces.map{|p| p.is_a?(Th::Province) }.uniq.first == true
    assert x.provinces.map{|p| p.is_a?(Th::Province) }.uniq.count == 1
  end
end
