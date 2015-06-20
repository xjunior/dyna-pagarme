require 'pagarme/error'

describe PagarMe::Error do
  let(:raw_errors) { [{'message' => 'wrong card number'}, {'message' => 'wrong cvv'}] }
  subject { PagarMe::Error.new(raw_errors) }

  describe "message" do
    it 'is a string with all the messages concatenated' do
      expect(subject.message).to eql 'wrong card number, wrong cvv'
    end
  end

  describe "messages" do
    it 'is an array with all the messages' do
      expect(subject.messages).to eql ['wrong card number', 'wrong cvv']
    end
  end
end
