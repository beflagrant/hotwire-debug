
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hotwire/debug/version"

Gem::Specification.new do |spec|
  spec.name          = "hotwire-debug"
  spec.version       = Hotwire::Debug::VERSION
  spec.authors       = ["Jim Remsik", "Jonathan Greenberg"]
  spec.email         = ["jim@beflagrant.com", "jonathan@beflagrant.com"]

  spec.summary       = %q{Hotwire-debug highlights changes that occur via turbo-rails.}
  spec.homepage      = "http://www.github.com/beflagrant/hotwire-debug"
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.files      = `git ls-files`.split("\n")
end
