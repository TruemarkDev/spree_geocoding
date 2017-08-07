# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'spree_geocoding/version'

Gem::Specification.new do |s|
  s.name        = 'spree_geocoding'
  s.version     = SpreeGeocoding::VERSION
  s.summary     = 'Add geo-points to Spree::Address model.'
  s.description = s.description
  s.license     = 'BSD-3-Clause'

  s.author    = 'Arkhitech'
  s.email     = 'info@arkhitech.com'
  # s.homepage  = 'http://www.example.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_runtime_dependency 'spree_core', '>= 1.0'
  s.add_runtime_dependency 'geocoder'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '>= 0.37.2'
  s.add_development_dependency 'rubocop-rspec', '>= 1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
