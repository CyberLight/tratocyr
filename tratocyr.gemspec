# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tratocyr/version'

Gem::Specification.new do |spec|
  spec.name          = "tratocyr"
  spec.version       = Tratocyr::VERSION
  spec.authors       = ["CyberLight"]
  spec.email         = ["cyberlight@live.ru"]
  spec.summary       = ["Latin to cyrillic transformation gem"]
  spec.description   = ["Latin to cyrillic transformation gem"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "redcarpet", "~> 2.3.0"
  spec.add_development_dependency "yard", "~> 0.8.7.4"

  spec.add_development_dependency "rspec-core", "~> 2.0"
  spec.add_development_dependency "rspec-expectations", "~> 2.0"
  spec.add_development_dependency "rr", "~> 1.0"
end
