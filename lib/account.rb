class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
    @statement = []
  end

  def credit_balance(amount, date = Time.now.strftime("%d/%m/%Y"))
    balance = @balance += amount
    @statement << "#{date} || #{amount}.00 || || #{balance}.00"
    return balance
  end

  def debit_balance(amount, date = Time.now.strftime("%d/%m/%Y"))
    balance = @balance -= amount
    @statement << "#{date} || || #{amount}.00 || #{balance}.00"
    return balance
  end

  def print_statement
    summary = "date || credit || debit || balance\n#{@statement.reverse.join("\n")}"
    print summary
  end
end
