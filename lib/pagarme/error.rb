module PagarMe
  class Error < StandardError
    attr_reader :errors

    def initialize(errors)
      @errors = errors
      super messages.join(', ')
    end

    def messages
      errors.map{|error| error['message']}
    end
  end
end
