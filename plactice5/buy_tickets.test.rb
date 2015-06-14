require 'minitest/autorun'
require_relative 'buy_tickets'

class TestBuy_tickets < Minitest::Test
  def test_buy_tickets
    assert_output("Buying a ticket for Sam.\nBuying a ticket for Dave.\nBuying a ticket for David.\n"){ Buy_tickets.new.buy_tickets("Sam", "Dave", "David") }
    assert_output("Buying a group ticket for John, Paul, Ringo, George.\n"){ Buy_tickets.new.buy_tickets("John", "Paul", "Ringo", "George") }
  end
end
