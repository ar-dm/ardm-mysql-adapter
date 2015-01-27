# encoding: utf-8
require File.expand_path('../lib/dm-mysql-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name             = 'dm-mysql-adapter'
  gem.version          = DataMapper::MysqlAdapter::VERSION

  gem.authors          = [ 'Dan Kubb' ]
  gem.email            = 'dan.kubb@gmail.com'
  gem.summary          = 'MySQL Adapter for DataMapper'
  gem.description      = gem.summary
  gem.homepage         = 'http://datamapper.org'
  gem.license          = 'MIT'

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[ LICENSE README.rdoc ]
  gem.require_paths    = %w[ lib ]

  gem.add_runtime_dependency 'dm-do-adapter', '~> 1.2'
  gem.add_runtime_dependency 'do_mysql',      '~> 0.10.6'

  gem.add_development_dependency 'dm-migrations', '~> 1.2'
  gem.add_development_dependency 'rake',          '~> 0.9'
  gem.add_development_dependency 'rspec',         '~> 1.3'
end
