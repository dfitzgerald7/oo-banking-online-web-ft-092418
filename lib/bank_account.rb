class BankAccount
  
  attr_accessor :name, :balance, :staus
  
  def initialize(name, balance = 1000, status = "open")
    self.name = name 
    self.balance = balance
    self.status = status
  end 
  
end
