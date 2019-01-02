require "test_helper"

class Th::ProvinceTest < Minitest::Test
  def test_province_data
    assert Th::Province.data.count > 0
  end
  def test_province_find
    x = Th::Province.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Province)
  end
  def test_province_find
    assert Th::Province.find(1212313213212132131).nil?
  end
  def test_province_geography
    x = Th::Province.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Province)
    assert x.geography.is_a?(Th::Geography)
  end
end
