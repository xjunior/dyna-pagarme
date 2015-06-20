# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pagarme/version'

Gem::Specification.new do |spec|
  spec.name          = "dyna-pagarme"
  spec.version       = PagarMe::VERSION
  spec.authors       = ["Carlos Palhares"]
  spec.email         = ["me@xjunior.me"]

  spec.summary       = %q{(Better) alternative gem to PagarMe}
  spec.description   = %q{(Better) alternative gem to PagarMe}
  spec.homepage      = "http://github.com/dynadrop/dyna-pagarme"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.8.0"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "webmock", "~> 1.21.0"
end
