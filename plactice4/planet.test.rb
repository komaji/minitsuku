require 'minitest/autorun'
require_relative 'planet'

class TestPlanet < Minitest::Test
  # def setup
  #   @pluto = Planet.new()
  #   @earth = Planet.new()
  #   @mars = Planet.new()
  # end

  def test_pluto
    assert_output(/Probably not./){ @pluto.life?() }
  end

  def test_erth
    assert_output(/Positively!/){ @earth.life?() }
  end

  def test_mars
    assert_output(/Who knows?/){ @mars.life?() }
  end
end
