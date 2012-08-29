# -*- encoding: utf-8 -*-
require File.expand_path('../lib/little_brother/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Roger Correia"]
  gem.email         = ["rogerpcorreia@gmail.com"]
  gem.description   = %q{Controller request/action monitor}
  gem.summary       = %q{Monitors/Stores every action passed through the controller. The data is stored for conveniently for later analysis and statistics.}
  gem.homepage      = ""

  gem.add_development_dependency  'activerecord',   '~> 3.0'
  gem.add_development_dependency  'rspec-rails'
  gem.add_development_dependency  'rake'  

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "little_brother"
  gem.require_paths = ["lib"]
  gem.version       = LittleBrother::VERSION
end
