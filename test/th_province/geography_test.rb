require "test_helper"

class ThProvince::GeographyTest < Minitest::Test
  def test_geography_data
    assert ThProvince::Geography.data.count > 0
  end
  def test_geography_find
    x = ThProvince::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Geography)
  end
  def test_geography_find
    assert ThProvince::Geography.find(1212313213212132131).nil?
  end
  def test_geography_provinces
    x = ThProvince::Geography.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Geography)
    assert x.provinces.count > 0
    assert x.provinces.map{|p| p.is_a?(ThProvince::Province) }.uniq.first == true
    assert x.provinces.map{|p| p.is_a?(ThProvince::Province) }.uniq.count == 1
  end
end
