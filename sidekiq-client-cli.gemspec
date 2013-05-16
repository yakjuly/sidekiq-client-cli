# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/client/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-client-cli"
  spec.version       = Sidekiq::Client::Cli::VERSION
  spec.authors       = ["Adil Haritah"]
  spec.email         = ["haritahadil@gmail.com"]
  spec.description   = %q{Command line client for Sidekiq. Push worker classes to queue from the cli ...}
  spec.summary       = %q{Command line client for Sidekiq}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"


  spec.add_dependency "sidekiq"
  spec.add_dependency "cli"

end
