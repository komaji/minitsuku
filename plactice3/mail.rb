module Mail
  def write(arg)
    @test = "Postcard of #{ Time.now }:\n\nDear #{ @recipient }\n\n#{ arg }\n\nSincerely\n#{ @sender }"
  end
  
  def send
    puts "#{ Time.now }: Sending a Postcard to #{ @recipient }.\n"
  end

  def to_s
    @test
  end
end
  
