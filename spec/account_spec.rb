require 'account'

describe Account do

  let(:account) { Account.new }
  
  it "should credit account with a specified amount of money" do
    expect(account.credit(1000, "10/01/2023")).to eq(1000)
    expect(account.credit(2000, "10/01/2023")).to eq(3000)
  end

end