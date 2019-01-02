require "test_helper"

class GK::ProvinceTest < Minitest::Test
  def test_province_data
    assert GK::Province.data.count > 0
  end
  def test_province_find
    x = GK::Province.find(1)
    assert !x.nil?
    assert x.is_a?(GK::Province)
  end
  def test_province_find
    assert GK::Province.find(1212313213212132131).nil?
  end
  def test_province_geography
    x = GK::Province.find(1)
    assert !x.nil?
    assert x.is_a?(GK::Province)
    assert x.geography.is_a?(GK::Geography)
  end

  def test_provinces_with_geography_id
    provinces = GK::Province.provinces_with_geography_id(1)
    assert provinces.count > 0
    assert provinces.map{|p| p.is_a?(GK::Province) }.uniq.first == true
    assert provinces.map{|p| p.is_a?(GK::Province) }.uniq.count == 1
  end

  def test_province_amphurs
    x = GK::Province.find(1)
    assert !x.nil?
    assert x.is_a?(GK::Province)
    assert x.amphurs.count > 0
    assert x.amphurs.map{|p| p.is_a?(GK::Amphur) }.uniq.first == true
    assert x.amphurs.map{|p| p.is_a?(GK::Amphur) }.uniq.count == 1
  end
end
