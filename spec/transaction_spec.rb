require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new(:deposit, "30/10/2021", 100, 100) }

  it "has a type" do
    expect(transaction.type).to eq(:deposit)
  end
  it "has a date" do
    expect(transaction.date).to eq("30/10/2021")
  end

  it "has a deposit or withdrawal amount" do
    expect(transaction.amount).to eq(100)
  end

  it "has a balance" do
    expect(transaction.balance).to eq(100)
  end
end
