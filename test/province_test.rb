require "test_helper"

class ProvinceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Province::VERSION
  end
end
