require 'spec_helper'
require 'json'
require 'webmock/rspec'

shared_examples_for 'pagarme resource' do |resource, name, path|
  def stub_create(path, data, response)
    stub_request(:post, "test.com#{path}").
      with(:body => data, :headers => {'Content-Type'=>'application/x-www-form-urlencoded'}).
      to_return(:body => response.to_json)
  end

  describe '.create' do
    it "sends a POST to #{path} with the #{name} data" do
      stub_create(path, {api_key: 'LOL', data: '123', more_data: '2500'}, {object: name, id: '123'})

      response = resource.create({data: '123', more_data: '2500'})

      expect(response['object']).to eql name
      expect(response['id']).to eql '123'
    end
  end
end

describe 'PagarMe.transactions' do
  it_behaves_like 'pagarme resource', PagarMe.transactions, 'transaction', '/transactions'
end

describe 'PagarMe.bank_accounts' do
  it_behaves_like 'pagarme resource', PagarMe.bank_accounts, 'bank_account', '/bank_accounts'
end
