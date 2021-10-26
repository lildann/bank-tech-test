require 'account'

describe Account do

  let(:account) { Account.new }
  
  it "should credit account with a specified amount of money" do
    expect(account.credit_balance(1000, "10/01/2023")).to eq(1000)
    expect(account.credit_balance(2000, "13/01/2023")).to eq(3000)
  end

  it "should debit account with a specified amount of money" do
    expect(account.debit_balance(500, "14/01/2023")).to eq(-500)
  end

  it "should credit and debit account, changing the running balance" do
    account.credit_balance(1000, "10/01/2023")
    account.credit_balance(2000, "13/01/2023")
    expect(account.debit_balance(500, "14/01/2023")).to eq(2500)
  end

  it "should print a full statement showing the banner, date, amount credited / debited, and the balance" do
    account.credit_balance(1000, "10/01/2023")
    account.credit_balance(2000, "13/01/2023")
    account.debit_balance(500, "14/01/2023")
    expect { account.print_statement }.to output.to_stdout
  end
end
