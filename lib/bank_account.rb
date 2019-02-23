require_relative "./bank_account.rb"

class BankAccount

attr_reader :name,:balance,:status
attr_writer :status,:balance

 def initialize(name,balance=1000,status="open")
    @name=name
    @balance = balance
    @status = status
 end 

 def deposit(amount)
    @balance += amount
 end 

def display_balance
    "Your balance is $#{@balance}." 
end 

 def valid?
    if @status =="open" && @balance > 0
        true 
    else 
        false
    end 
 end 

 def close_account
    @status = "closed"
 end 
end
