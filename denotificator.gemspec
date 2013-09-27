# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'denotificator/version'

Gem::Specification.new do |spec|
  spec.name          = "denotificator"
  spec.version       = Denotificator::VERSION
  spec.authors       = ["Marcos Oliveira"]
  spec.email         = ["marcosvm@gmail.com"]
  spec.description   = %q{Denotificator unsubscribes you from notifications where you aren't directed mentioned}
  spec.summary       = %q{Enough said}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", "~> 0.8.8"
  spec.add_runtime_dependency "yajl-ruby"
  spec.add_runtime_dependency "newrelic_rpm"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-debugger"
end
