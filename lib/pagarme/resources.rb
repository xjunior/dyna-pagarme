require 'rest-client'

module PagarMe
  DEFAULT_ENDPOINT = 'https://api.pagar.me/1/'

  @@api_endpoint = DEFAULT_ENDPOINT
  def self.api_endpoint
    @@api_endpoint
  end

  def self.api_endpoint=(endpoint)
    @@api_endpoint = endpoint
  end

  def self.transactions
    Resource.new(client['/transactions'])
  end

  def self.bank_accounts
    Resource.new(client['/bank_accounts'])
  end

  private

  def self.client
    RestClient::Resource.new(api_endpoint)
  end
end
