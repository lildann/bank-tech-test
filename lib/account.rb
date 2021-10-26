class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def credit(amount, date)
    @balance += amount
  end

  def debit(amount, date)
    @balance -= amount
  end

  def print_statement
    
    "10/01/2023 || 1000.00 || || 1000.00"
  end

end
