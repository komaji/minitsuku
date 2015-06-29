require 'minitest/autorun'
require_relative 'hammer'

class TestHammer < Minitest::Test
  def test_hammer
    assert_output("Picks up red Hammer\nBam bam bam\n"){ Hammer.new("red").use }
  end
end
