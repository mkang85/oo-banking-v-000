
class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? && @sender.balance > @amount
  end

  def execute_transaction
    !self.valid?
      @status = 'rejected'
      "Transaction rejected. Please check your account balance."
    elsif @status != 'complete'
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
    end
  end


end
