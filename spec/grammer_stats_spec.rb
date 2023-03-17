require 'grammer_stats'

RSpec.describe GrammarStats do


  it "returns false if text is not a string" do
    hi = GrammarStats.new
    expect(hi.check(1)).to eq false
  end
  
  it "returns false if text does not end in correct punctuation." do
    hi = GrammarStats.new
    expect(hi.check("hello, world")).to eq false
    expect(hi.check("hello, world,")).to eq false
    expect(hi.check("hello, world;")).to eq false
  end

  it "returns false if text does not start with a capital letter." do
    hi = GrammarStats.new
    expect(hi.check("hello, world.")).to eq false
    expect(hi.check("hello, world!")).to eq false
    expect(hi.check("hello, world?")).to eq false
  end

  it "returns true if text ends in correct punctuation and starts with a capital letter" do
    hi = GrammarStats.new
    expect(hi.check("Hello, world.")).to eq true
    expect(hi.check("Hello, world!")).to eq true
    expect(hi.check("Hello, world?")).to eq true
  end

  it "returns as an integer the correct percenatge of texts that passed check method" do
    hi = GrammarStats.new
    hi.check("Hello, world")
    hi.check("Hello, world!")
    hi.check("Hello, world?")
    hi.check("hello, world.")
    expect(hi.percentage_good).to eq 50
  end

  it "returns as an integer the correct percenatge of texts that passed check method if that percentage is a float" do
    hi = GrammarStats.new
    hi.check("Hello, world")
    hi.check("Hello, world!")
    hi.check("Hello, world?")
    hi.check("hello, world.")
    hi.check("Hello, world!")
    hi.check("bye")
    hi.check(1)
    expect(hi.percentage_good).to eq 42.857142857142854
  end
  
end

