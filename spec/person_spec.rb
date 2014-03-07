require 'rspec'
require_relative '../lib/person.rb'


describe Person do

  let(:taxpayer_first_name) {"Commando" }
  let(:taxpayer_last_name) {"Frog"}
  let(:taxpayer_income) {200000}
  let(:taxes_paid) {120}
  let(:taxpayer_rate) {3}
  let(:taxpayer) do
    Person.new(taxpayer_first_name, taxpayer_last_name, taxpayer_income, taxes_paid, taxpayer_rate)
  end


  it "has a first name" do
    expect(taxpayer.first_name).to eq("Commando")
  end

  it "has a last name" do
    expect(taxpayer.last_name).to eq("Frog")
  end

  it "has an annual income" do
    expect(taxpayer.income).to eq(200000)
  end

  it "has tax paid" do
    expect(taxpayer.paid).to eq(120)
  end

  it "has initial taxes owed" do
    expect(taxpayer.rate).to eq(3)
  end

  it "calculates what taxes were supposed to be paid" do
    expect(taxpayer.initial_taxes).to eq(200000 * (3 * 0.01))
  end

  it "calculates amount owed or to be refunded" do
    expect(taxpayer.refund?).to eq(120 - taxpayer.initial_taxes)
  end
end
