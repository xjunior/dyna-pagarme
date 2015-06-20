module PagarMe
  class Request
    def initialize(resource, args)
      @resource, @args = resource, args
    end

    def post
      wrap_errors { @resource.post(args_with_api_key) }
    end

    private

    def args_with_api_key
      @args.merge(api_key: PagarMe.api_key)
    end

    def wrap_errors
      yield
    rescue RestClient::BadRequest => e
      error = JSON.parse(e.response)
      raise ::PagarMe::Error.new(error['errors'])
    end
  end
end
