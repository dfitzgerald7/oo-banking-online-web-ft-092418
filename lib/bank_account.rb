class BankAccount
  
  attr_accessor :name, :balance
  
  def initialize(name, balance = 1000)
    self.name = name 
    self.balance = balance
  end 
  
  def status 
    self.balance
  end 
end
