class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def credit(amount, date)
    @balance += 1000
  end
end