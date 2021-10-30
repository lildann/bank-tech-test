class Account
  attr_reader :balance, :transactions

  def initialize(balance = 0) 
    @balance = balance
    @transactions = []
  end

  def credit_balance(amount, date = Time.now.strftime("%d/%m/%Y"))
    balance = @balance += amount
    transaction = Transaction.new(:deposit, date, amount, balance) 
    # I want to refactor this to a new_transaction method 
    # but need to access the variables in this method scope
    # waht's a good way to do this?
    @transactions << transaction
    return balance
  end

  def debit_balance(amount, date = Time.now.strftime("%d/%m/%Y"))
    balance = @balance -= amount
    transaction = Transaction.new(:withdrawal, date, amount, balance)
    @transactions << transaction
    return balance
  end

  def print_statement
    format_banner
    @transactions.reverse.each do |transaction|
      transaction.type == :deposit ? 
      format_deposit(transaction.date, transaction.amount, transaction.balance) : 
      format_withdrawal(transaction.date, transaction.amount, transaction.balance)
    end
  end

  private

  def format_banner
    puts "date || credit || debit || balance"
  end

  def format_deposit(date, amount, balance)
    puts "#{date} || #{sprintf "%.2f", amount} || || #{sprintf "%.2f", balance}"
  end

  def format_withdrawal(date, amount, balance)
    puts "#{date} || || #{sprintf "%.2f", amount} || #{sprintf "%.2f", balance}"
  end
end
