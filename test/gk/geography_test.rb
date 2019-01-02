require "test_helper"

class GK::GeographyTest < Minitest::Test
  def test_geography_data
    assert GK::Geography.data.count > 0
  end
  def test_geography_find
    x = GK::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(GK::Geography)
  end
  def test_geography_find
    assert GK::Geography.find(1212313213212132131).nil?
  end
  def test_geography_provinces
    x = GK::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(GK::Geography)
    assert x.provinces.count > 0
    assert x.provinces.map{|p| p.is_a?(GK::Province) }.uniq.first == true
    assert x.provinces.map{|p| p.is_a?(GK::Province) }.uniq.count == 1
  end
end
