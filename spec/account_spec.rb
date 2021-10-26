require 'account'

describe Account do
  
  it "should credit account with a specified amount of money" do
    account = Account.new
    expect(account.credit(1000, "10/01/2023")).to eq(1000)
  end
end