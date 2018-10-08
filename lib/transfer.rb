class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  @@all = []
  
  def initialize(sender, receiver, amount, status = "pending")
    self.sender = sender
    self.receiver = receiver 
    self.amount = amount
    self.status = status
  end 
  
  def valid? 
    receiver.valid? && sender.valid? 
  end 
  
  def execute_transaction 
    sender.balance -= amount 
    receiver.balance += amount
    self.status = "complete"
  end 
  
end
