namespace :db do
  task :create do
    sh 'mysql -uroot -e "CREATE DATABASE IF NOT EXISTS datamapper_default_tests;"'
  end
end
