# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mash/version'

Gem::Specification.new do |spec|
  spec.name          = "mash"
  spec.version       = Mash::VERSION
  spec.authors       = ["Alex MacCaw"]
  spec.email         = ["info@eribium.org"]
  spec.summary       = %q{A Mash library.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
