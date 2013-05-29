# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'air_quality/version'

Gem::Specification.new do |s|
  s.name        = 'air_quality'
  s.version     = SadPanda::VERSION
  s.date        = '2013-05-29'
  s.summary     = "Hola!"
  s.description = "Parses air quality data, calculates statistics, and compares with US EPA standards"
  s.authors     = ["Jonathan Lau"]
  s.email       = 'jhylau1@gmail.com'
  s.files       = ["lib/air_quality.rb"]
  s.homepage    =
    'http://rubygems.org/gems/air_quality'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
