require 'spec_helper'

describe 'PagarMe' do
  describe '.validate_fingerprint(id, fingerprint)' do
    it 'is valid when matches with the SHA1 digest of id and api key' do
      expect(PagarMe.validate_fingerprint(10, '3a20a2da8addbbb934d0c1dffab224a59077fc83')).to be true
    end

    it 'is not valid if the fingerprint does not match the SHA1 digest' do
      expect(PagarMe.validate_fingerprint(10, 'e0426219c9b2367e90eec350a7d638b1efedf709')).to be false
    end
  end
end
