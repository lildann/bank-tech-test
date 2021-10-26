class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
    @statement = []
  end

  def credit(amount, date = Time.now.strftime("%d/%m/%Y"))
    balance = @balance += amount
    @statement << "#{date} || #{amount}.00 || || #{balance}.00"
    return balance
  end

  def debit(amount, date = Time.now.strftime("%d/%m/%Y"))
    @balance -= amount
  end

  def print_statement
   @statement.join("")
  end

end
