# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_reading_time/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll_reading_time"
  spec.version       = JekyllReadingTime::VERSION
  spec.authors       = ["Tim Rogers"]
  spec.email         = ["tim@theroutemap.com"]

  spec.summary       = %q{Calculate how long it'll take to read a Jekyll post or page}
  spec.homepage      = "https://github.com/routemap/jekyll-reading-time"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end