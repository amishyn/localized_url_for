# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "localized_url_for/version"

Gem::Specification.new do |s|
  s.name        = "localized_url_for"
  s.version     = LocalizedUrlFor::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Oleksandr Mishyn"]
  s.email       = ["mishyn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Localize urls}
  s.description = %q{Localize urls by injecting :locale param into url_for}

  s.rubyforge_project = "localized_url_for"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'rails', '>=3.0.0'
  s.add_development_dependency 'rspec-rails', '~>2.7.0'
  s.add_development_dependency 'capybara', '~>1.1.1'
  s.add_development_dependency 'sqlite3'
  s.test_files = Dir['spec/**/*']
end
