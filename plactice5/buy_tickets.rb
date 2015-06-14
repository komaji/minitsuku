class Buy_tickets
  def buy_tickets(*args)
    if (args.length <= 3) then
      args.each{ |name| puts "Buying a ticket for " + name + "."}
    else
      puts "Buying a group ticket for " + args.join(", ") + "."
    end
  end
end

tickets = Buy_tickets.new()
tickets.buy_tickets("Sam", "Dave", "David")
tickets.buy_tickets("John", "Paul", "Ringo", "George")
