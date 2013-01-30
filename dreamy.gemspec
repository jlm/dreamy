# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dreamy/version'

Gem::Specification.new do |gem|
  gem.name          = "dreamy"
  gem.version       = Dreamy::VERSION
  gem.authors       = ["Jerod Santo", "Harlan Wood", "Arne Brasseur"]
  gem.email         = ["arne.brasseur@gmail.com"]
  gem.summary       = "A Ruby library and command line tool for accessing DreamHost's API"
  gem.summary       = "A Ruby library and command line tool for accessing DreamHost's API"
  gem.homepage      = "http://github.com/arnebrasseur/dreamy"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency("hpricot", ">= 0.7")
  gem.add_dependency("terminal-table", [">= 1.0.5"])
  gem.add_dependency("uuid", [">= 2.0.1"])

  gem.add_development_dependency("rake")
  gem.add_development_dependency("shoulda")
end
