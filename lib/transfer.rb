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
    unless @@all.include?(self) || self.valid?
      sender.balance -= amount 
      receiver.balance += amount
      self.status = "complete"
      @@all << self
    end 
  end 
  
end
