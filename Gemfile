require 'pathname'

source 'https://rubygems.org'

gemspec

SOURCE         = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX   = SOURCE == :path ? ''                                : '.git'
DATAMAPPER     = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/ar-dm'
DM_VERSION     = '~> 1.2.0'
DO_VERSION     = '~> 0.10.6'
CURRENT_BRANCH = ENV.fetch('GIT_BRANCH', 'master')

do_options = {}
do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

gem 'ardm-do-adapter', DM_VERSION,
  SOURCE  => "#{DATAMAPPER}/ardm-do-adapter#{REPO_POSTFIX}",
  :branch => CURRENT_BRANCH

group :development do

  gem 'ardm-migrations', DM_VERSION,
    SOURCE  => "#{DATAMAPPER}/ardm-migrations#{REPO_POSTFIX}",
    :branch => CURRENT_BRANCH

end

group :datamapper do

  gem 'ardm-core', DM_VERSION,
    SOURCE  => "#{DATAMAPPER}/ardm-core#{REPO_POSTFIX}",
    :branch => CURRENT_BRANCH

  gem 'data_objects', DO_VERSION, do_options.dup

  plugins = ENV['PLUGINS'] || ENV['PLUGIN']
  plugins = plugins.to_s.tr(',', ' ').split.push('ardm-migrations').uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION,
      SOURCE  => "#{DATAMAPPER}/#{plugin}#{REPO_POSTFIX}",
      :branch => CURRENT_BRANCH
  end

end
