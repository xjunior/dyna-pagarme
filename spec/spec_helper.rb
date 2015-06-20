$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pagarme'

PagarMe.api_key = 'LOL'
PagarMe.api_endpoint = 'http://test.com'
