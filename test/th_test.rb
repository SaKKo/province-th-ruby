require "test_helper"

class GKTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GK::VERSION
  end
end
