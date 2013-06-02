# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guardpost/version'

Gem::Specification.new do |gem|
  gem.name          = "guardpost"
  gem.version       = GuardPost::VERSION
  gem.authors       = ["Dan Weinand"]
  gem.email         = ["dweinand@gmail.com"]
  gem.description   = %q{Stand-alone OAuth 2.0 authentication server}
  gem.summary       = %q{GuardPost is a stand-alone authentication server based on the final version of OAuth 2.0.}
  gem.homepage      = "https://github.com/dweinand/guardpost"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
