# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'capybara/accessible/version'

Gem::Specification.new do |spec|
  spec.name          = 'capybara-accessible'
  spec.version       = Capybara::Accessible::VERSION
  spec.authors       = ["Case Commons"]
  spec.email         = ["accessibility@casecommons.org"]
  spec.homepage      = 'https://github.com/Casecommons/capybara-accessible'
  spec.summary       = %q{Capybara extension and webdriver for automated accessibility testing}
  spec.description   = %q{A Selenium based webdriver and Capybara extension that runs Google Accessibility Developer Tools auditing assertions on page visits.}
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capybara', '~> 3.1.0'

  spec.add_development_dependency 'capybara-webkit', '~> 1.15.1'
  spec.add_development_dependency 'poltergeist'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'selenium-webdriver'
  spec.add_development_dependency 'sinatra'
end
