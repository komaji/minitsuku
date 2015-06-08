require 'minitest/autorun'
require_relative 'plactice2'

class TestPlactice2 < Minitest::Test
  def test_clever_print
    assert_output(/Ruby the Programming Language/){ Plactice2.new.clever_print(["Ruby"], "the", ["Programming", "Language"]) }
    assert_output(/Agile Web Development with Rails 3.0/){ Plactice2.new.clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 }) }
  end
end
