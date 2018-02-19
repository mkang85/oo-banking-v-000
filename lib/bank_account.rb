class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @status = 'open'
    @balance = 1000
  end

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance
    @balance
  end
end
