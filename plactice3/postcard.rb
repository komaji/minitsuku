require_relative 'mail'

class Postcard
  include Mail

  attr_accessor :sender, :recipient  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end

end

class Exe
  def exe
    card = Postcard.new("Me", "Friend")
    card.write("Did you forget my birthsday?")
    card.send
    puts "-" * 60
    sleep(2)
    puts card
  end
end

#Exe.new.exe
