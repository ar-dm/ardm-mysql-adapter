# encoding: utf-8
require File.expand_path('../lib/dm-mysql-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name             = 'ardm-mysql-adapter'
  gem.version          = DataMapper::MysqlAdapter::VERSION

  gem.authors          = [ 'Martin Emde', 'Dan Kubb' ]
  gem.email            = [ 'me@martinemde.com', 'dan.kubb@gmail.com' ]
  gem.summary          = 'Ardm fork of dm-mysql-adapter'
  gem.description      = 'MySQL Adapter for DataMapper'
  gem.homepage         = 'https://github.com/ar-dm/ardm-mysql-adapter'
  gem.license          = 'MIT'

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[ LICENSE README.md ]
  gem.require_paths    = %w[ lib ]

  gem.add_runtime_dependency 'ardm-do-adapter', '~> 1.2'
  gem.add_runtime_dependency 'do_mysql',        '~> 0.10.6'

  gem.add_development_dependency 'ardm-migrations', '~> 1.2'
  gem.add_development_dependency 'rake',            '~> 0.9'
  gem.add_development_dependency 'rspec',           '~> 1.3'
end
