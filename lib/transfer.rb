class Transfer
  attr_accessor :status, :sender, :receiver
  def initialize(sender, receiver, amount)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
end
