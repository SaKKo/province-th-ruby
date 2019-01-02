require "test_helper"

class ThTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Th::VERSION
  end
end
