# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/pubg/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-pubg"
  spec.version       = Ruby::Pubg::VERSION
  spec.authors       = ["Rituraj"]
  spec.email         = ["rituraj291089@gmail.com"]

  spec.summary       = %q{A ruby wrapper for the PLAYERUNKNOWN'S BATTLEGROUNDS stats API from https://pubgtracker.com}
  spec.description   = %q{A ruby wrapper for the PLAYERUNKNOWN'S BATTLEGROUNDS stats API from https://pubgtracker.com. Utilises the Rest client gem to perform api calls.}
  spec.homepage      = "https://github.com/aelor/ruby-pubg"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "rest-client"
  spec.add_dependency "json"
end
