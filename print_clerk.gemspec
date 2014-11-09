# coding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'print_clerk'
  s.version     = '0.2'
  s.summary     = 'Print invoices from an order'
  s.required_ruby_version = '>= 1.9.3'
  s.authors = ["Torsten Ruger"]

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_runtime_dependency 'office_clerk', '~> 0.1'

end
