class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name 
  
  def initialize(name, balance = 1000, status = "open")
    @name = name 
    self.balance = balance
    self.status = status
  end 
  
  def deposit 
    
  end 
  
end
