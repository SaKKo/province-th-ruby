require "test_helper"

class ThProvince::AmphurTest < Minitest::Test
  def test_amphur_data
    assert ThProvince::Amphur.data.count > 0
  end
  def test_amphur_find
    x = ThProvince::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Amphur)
  end
  def test_amphur_find
    assert ThProvince::Amphur.find(1212313213212132131).nil?
  end

  def test_amphur_geography
    x = ThProvince::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Amphur)
    assert x.geography.is_a?(ThProvince::Geography)
  end

  def test_amphur_province
    x = ThProvince::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(ThProvince::Amphur)
    assert x.province.is_a?(ThProvince::Province)
  end

  def test_amphurs_with_geography_id
    amphurs = ThProvince::Amphur.amphurs_with_geography_id(1)
    assert amphurs.count > 0
    assert amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.first == true
    assert amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.count == 1
  end

  def test_amphurs_with_province_id
    amphurs = ThProvince::Amphur.amphurs_with_province_id(1)
    assert amphurs.count > 0
    assert amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.first == true
    assert amphurs.map{|p| p.is_a?(ThProvince::Amphur) }.uniq.count == 1
  end
end
