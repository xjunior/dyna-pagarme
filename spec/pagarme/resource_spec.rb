require 'spec_helper'

describe PagarMe::Resource do
  let(:client) { double }
  subject { PagarMe::Resource.new(client) }

  describe 'create' do
    let(:request) { double }

    describe 'successful calls' do
      before do
        expect(PagarMe::Request).to receive(:new).with(client, {data: 'value'}).and_return(request)
        expect(request).to receive(:post).and_return('{"attribute": 10}')
      end

      it 'parses the response into a hash' do
        response = subject.create({data: 'value'})

        expect(response['attribute']).to eql 10
      end
    end
  end
end
