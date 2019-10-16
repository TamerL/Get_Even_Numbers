require 'rspec/autorun'
require './src/get_even_numbers'

describe 'get_even_num' do
  context "when the input is a valid number" do
    it "returns an array containing even numbers excluding '0'" do
      result = get_even_num(8)
      expect(result).to eq([2,4,6,8])
    end
  end

  context "when the input is 0" do
    it "returns a message" do
      result = get_even_num(0)
      expect(result).to eq("please type a number starting from 1")
    end
  end

  context "when the input is a negative number" do
    it "returns a message" do
      result = get_even_num(-9)
      expect(result).to eq("please type a number starting from 1")
    end
  end
  
  context "when the input is nil" do
    it "returns a message" do
      result = get_even_num(nil)
      expect(result).to eq("please type a number starting from 1")
    end
  end

  context "when the input is a fraction" do
    it "returns a message" do
      result = get_even_num(5.555)
      expect(result).to eq("please type a number starting from 1")
    end
  end
end
