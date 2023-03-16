require 'grammer_checker'

RSpec.describe "grammer_checker method" do

  it "returns false if empty string" do
    result = grammer_checker("")
    expect(result).to eq false
  end

  context "ends in full stop" do
    it "returns true if it starts with a capital" do
      result = grammer_checker("Hello World.")
      expect(result).to eq true
    end

    it "returns false if no capital at start" do
      result = grammer_checker("hello World.")
      expect(result).to eq false
    end
  end

  context "ends in exclamation mark" do
    it "returns true if it starts with a capital" do
      result = grammer_checker("Hello World!")
      expect(result).to eq true
    end

    it "returns false if no capital at start" do
      result = grammer_checker("hello World!")
      expect(result).to eq false
    end
  end

    context "ends in question mark" do
      it "returns true if it starts with a capital" do
        result = grammer_checker("Hello World?")
        expect(result).to eq true
      end
  
      it "returns false if no capital at start" do
        result = grammer_checker("hello World?")
        expect(result).to eq false
      end
    end

    context "no suitable puncutation to end scentence" do
      it "returns false if it starts with a capital" do
        result = grammer_checker("Hello World")
        expect(result).to eq false
      end
    
      it "returns false if it does not start with a capital" do
        result = grammer_checker("hello World")
        expect(result).to eq false
      end
    end
    
end