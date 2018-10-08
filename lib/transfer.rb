class Transfer
  attr_accessor :sender, :reciever, :amount 
  
  def initialize(sender, reciever, amount)
    self.sender = sender
    self.reciever = reciever 
    self.amount = amount
  end 
end
