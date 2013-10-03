# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_model_serializers_matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "active_model_serializers_matchers"
  spec.version       = ActiveModelSerializersMatchers::VERSION
  spec.authors       = ["francisco delgado"]
  spec.email         = ["francisco.delgado@agilekoding.com"]
  spec.description   = "Making ActiveModelSerializers specs easy and maintainable"
  spec.summary       = "Making ActiveModelSerializers specs easy and maintainable"
  spec.homepage      = "https://github.com/franciscodelgadodev/active_model_seializers_matchers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "aruba",       '0.5.3'
  spec.add_development_dependency 'rails',       '~> 3.0'
  spec.add_development_dependency 'cucumber',    '~> 1.1'
  spec.add_development_dependency 'rspec-rails', '>= 2.13.1', '< 3'
end
