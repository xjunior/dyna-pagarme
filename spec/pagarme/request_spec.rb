require 'spec_helper'

describe PagarMe::Request do
  let(:data) { {} }
  let(:client) { double }
  subject { PagarMe::Request.new(client, data) }

  describe 'post' do
    it 'posts to the client adding the API key to the request' do
      data[:my] = 'data'
      expect(client).to receive(:post).with(my: 'data', api_key: 'LOL')

      subject.post
    end

    it 'handdles errors' do
      expect(client).to receive(:post).and_raise(RestClient::BadRequest, {errors: [{message: 'error1'}, {message: 'error2'}]}.to_json)

      expect { subject.post }.to raise_error PagarMe::Error, 'error1, error2'
    end
  end
end
