require 'rspec'
require_relative '../lib/person.rb'


describe Person do
  it "has a first name" do
    expect(Person.new("first name").first_name).to eq("first name")
  end
end
