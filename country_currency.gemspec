lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'country_currency/version'

Gem::Specification.new do |s|
  s.name    = 'country_currency'
  s.version = CountryCurrency::VERSION
  s.authors = ['Néstor Coppi']
  s.email = 'nestorcoppi@gmail.com'

  s.description = 'ISO country code and currency library'
  s.summary     = 'Provides ISO 3166-1 country codes/names and ISO 4217 currencies.'
  s.homepage    = 'http://github.com/sequre/country_currency'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.license       = 'MIT'

  s.add_dependency 'rake', '~> 13.0.6'
  s.add_dependency 'tzinfo', '~> 2.0.4'
  s.add_development_dependency 'test-unit', '~> 3.5.3'
end
