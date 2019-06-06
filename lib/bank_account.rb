class BankAccount
attr_reader :name 
attr_accessor :balance,:status 
def initialize(name,balance=1000,status = "open")
  @name = name 
  @balance = balance
  @status = status
end
def deposit(balance)
  @balance += balance
  
end
def withdrawal(amount)
    self.balance -= amount
  end
def display_balance
 "Your balance is $#{self.balance}."
end 
def valid?
    self.balance > 0 && self.status == "open" ? true : false
  end
 def close_account
    self.status = "closed"
  end
end 
