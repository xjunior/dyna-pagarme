module PagarMe
  def self.api_key=(api_key)
    @@api_key = api_key
  end

  def self.api_key
    @@api_key
  end

  def self.validate_fingerprint(id, fingerprint)
    Digest::SHA1.hexdigest(id.to_s + "#" + PagarMe.api_key) == fingerprint
  end
end
