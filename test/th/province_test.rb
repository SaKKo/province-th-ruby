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

  def test_provinces_with_geography_id
    provinces = Th::Province.provinces_with_geography_id(1)
    assert provinces.count > 0
    assert provinces.map{|p| p.is_a?(Th::Province) }.uniq.first == true
    assert provinces.map{|p| p.is_a?(Th::Province) }.uniq.count == 1
  end

  def test_province_amphurs
    x = Th::Province.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Province)
    assert x.amphurs.count > 0
    assert x.amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.first == true
    assert x.amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.count == 1
  end
end
