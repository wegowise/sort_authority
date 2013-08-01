require File.expand_path('../lib/sort_authority/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'sort_authority'
  s.version = SortAuthority::VERSION
  s.authors = ['Nathan Fixler']
  s.email = 'nathan@fixler.org'
  s.license = 'MIT'
  s.summary = 'Natural order string comparison'
  s.description = 'String ordering for humans.'
  s.homepage = 'https://rubygems.org/gems/sort_authority'

  s.files = `git ls-files`.split("\n")
  s.extensions << 'ext/Rakefile'

  s.add_dependency 'rake'
  s.add_dependency 'ffi-compiler', '~> 0.1.3'

  s.add_development_dependency 'minitest', '~> 5.0.0'
end
