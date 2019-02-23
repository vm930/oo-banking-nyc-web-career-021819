require "pry"
require_relative "./bank_account.rb"

class Transfer
 
attr_reader :transfer,:sender,:receiver,:amount,:status
attr_writer :status

 def initialize(sender,receiver,amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
 end 

 def valid?
  if sender.valid? && receiver.valid?
    true 
  else 
    false
  end
 end 

 def execute_transaction
    if self.status == "pending" 
      self.sender.balance = self.sender.balance - self.amount
      self.receiver.balance = self.receiver.balance + self.amount
      self.status = "complete"
    end 

    if !self.valid?
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  # binding.pry
 end 

 def reverse_transfer
  # binding.pry
    if status == "complete"
      self.sender.balance += @amount
      self.receiver.balance -= @amount
      self.status = "reversed"
    end 
  end
end
