require "test_helper"

class ThProvince::ProvinceTest < Minitest::Test
  def test_province_data
    assert ThProvince::Province.data.count > 0
  end
  def test_province_find
    x = ThProvince::Province.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Province)
  end
  def test_province_find
    assert ThProvince::Province.find(1212313213212132131).nil?
  end
  def test_province_geography
    x = ThProvince::Province.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Province)
    assert x.geography.is_a?(ThProvince::Geography)
  end

  def test_provinces_with_geography_id
    provinces = ThProvince::Province.provinces_with_geography_id(1)
    assert provinces.count > 0
    assert provinces.map{|p| p.is_a?(ThProvince::Province) }.uniq.first == true
    assert provinces.map{|p| p.is_a?(ThProvince::Province) }.uniq.count == 1
  end

  def test_province_amphurs
    x = ThProvince::Province.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Province)
    assert x.amphurs.count > 0
    assert x.amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.first == true
    assert x.amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.count == 1
  end
end
