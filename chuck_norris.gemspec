# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chuck_norris/version'

Gem::Specification.new do |spec|
  spec.name          = "chuck_norris"
  spec.version       = ChuckNorris::VERSION
  spec.authors       = ["Spencer Dixon"]
  spec.email         = ["spencercdixon@gmail.com"]

  spec.summary       = %q{Light weight Chuck Norris API wrapper}
  spec.description   = %q{API wrapper to get funny Chuck Norris jokes}
  spec.homepage      = "https://github.com/spencercdixon/chuck_norris"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rest-client", '~> 0'
  spec.add_development_dependency "json", '~> 0'
  spec.add_development_dependency "pry", '~> 0'
end
