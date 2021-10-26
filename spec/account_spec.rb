require 'account'

describe Account do

  let(:account) { Account.new }
  
  it "should credit account with a specified amount of money" do
    expect(account.credit(1000, "10/01/2023")).to eq(1000)
    expect(account.credit(2000, "13/01/2023")).to eq(3000)
  end

  it "should debit account with a specified amount of money" do
    expect(account.debit(500, "14/01/2023")).to eq(-500)
  end

  it "should credit and debit account, changing the running balance" do
    account.credit(1000, "10/01/2023")
    account.credit(2000, "13/01/2023")
    expect(account.debit(500, "14/01/2023")).to eq(2500)
  end

end