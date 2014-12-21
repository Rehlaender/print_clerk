# coding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'print_clerk'
  s.version     = '0.4'
  s.summary     = 'Print invoices for a rubyclerk order'
  s.description  = "Html based, ie client side, printing for orders. Different styles are invoice, packing slip and receipt (for receipt printer in shop). Easy to configure and adapt"
  s.required_ruby_version = '>= 1.9.3'
  s.authors = ["Torsten Ruger"]

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_runtime_dependency 'office_clerk', '~> 0.8'

  s.add_runtime_dependency "barby"
  s.add_runtime_dependency "chunky_png"
  s.add_runtime_dependency "prawn"


end
