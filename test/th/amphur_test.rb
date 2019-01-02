require "test_helper"

class Th::AmphurTest < Minitest::Test
  def test_amphur_data
    assert Th::Amphur.data.count > 0
  end
  def test_amphur_find
    x = Th::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Amphur)
  end
  def test_amphur_find
    assert Th::Amphur.find(1212313213212132131).nil?
  end

  def test_amphur_geography
    x = Th::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Amphur)
    assert x.geography.is_a?(Th::Geography)
  end

  def test_amphur_province
    x = Th::Amphur.find(1)
    assert !x.nil?
    assert x.is_a?(Th::Amphur)
    assert x.province.is_a?(Th::Province)
  end

  def test_amphurs_with_geography_id
    amphurs = Th::Amphur.amphurs_with_geography_id(1)
    assert amphurs.count > 0
    assert amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.first == true
    assert amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.count == 1
  end

  def test_amphurs_with_province_id
    amphurs = Th::Amphur.amphurs_with_province_id(1)
    assert amphurs.count > 0
    assert amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.first == true
    assert amphurs.map{|p| p.is_a?(Th::Amphur) }.uniq.count == 1
  end
end
