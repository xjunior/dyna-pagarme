require 'pagarme/request'

module PagarMe
  class Resource
    def initialize(client)
      @client = client
    end

    def create(data)
      request = Request.new(@client, data)
      JSON.parse request.post
    end
  end
end
