require 'rspec'


describe README do

  let(:READ) { "The thing you, the reader, do" }
  let(:ME) { "Me, a bossy file with a demanding title" }
  let(:.md) { "Some dumb file extension, probably for macs I guess? Who knows" }
  let(:README) do
    README.new(READ, ME, .md)
  end


  it "has dumb text in it" do
    expect(README.contents).to eq("All this garbage that I wrote, I'd write it again here but then it would be an infinate loop!")
  end

  it "made someone read it" do
    expect(README.title).to eq("If you can read this it worked!")
  end
end
