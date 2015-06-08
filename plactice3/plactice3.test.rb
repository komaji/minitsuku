require 'minitest/autorun'
require_relative 'postcard'
require_relative 'mail'

class TestPostcard < Minitest::Test
  def setup
    @card = Postcard.new("Me", "Friend")
  end

  def test_write
    assert_equal "Postcard of #{ Time.now }:\n\nDear Friend\n\nDid you forget my birthsday?\n\nSincerely\nMe", @card.write("Did you forget my birthsday?")
  end

  def test_send
    assert_output("#{ Time.now }: Sending a Postcard to Friend.\n"){ @card.send }
  end
end

class TestExe < Minitest::Test
  def test_exe 
    assert_output("#{ Time.now }: Sending a Postcard to Friend.\n#{ '-' * 60 }\nPostcard of #{ Time.now }:\n\nDear Friend\n\nDid you forget my birthsday?\n\nSincerely\nMe\n"){ Exe.new.exe }
  end
end

