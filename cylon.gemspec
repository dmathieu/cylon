# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = "cylon"
  s.version     = "0.0.2"
  s.summary     = "Rack middleware and Rails Engine to avoid indexing your application in staging"
  s.email       = "42@dmathieu.com"
  s.homepage    = "http://github.com/dmathieu/cylon"
  s.description = "Rack middleware and Rails Engine to avoid indexing your application in staging"
  s.authors     = ['Damien Mathieu']
  s.license     = "MIT"

  s.rubyforge_project = "cylon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]
end
