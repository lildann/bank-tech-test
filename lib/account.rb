class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def credit(amount, date)
    @balance += amount
  end
end