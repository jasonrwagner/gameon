source 'https://rubygems.org'

gem 'rails', '3.2.9'

gem 'sqlite3', :group => [:development, :test]
gem 'pg'
gem 'tilt'
gem 'execjs'
gem 'heroku'
gem 'thin'
gem 'taps'
gem 'minitest'
gem 'rb-inotify'

group :development, :test do

  gem 'mysql2'
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem 'pg'
  #gem 'turn'
  gem 'rspec-rails' #, "~> 2.8"
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem "factory_girl_rails"
  gem 'webrat'
end

group :production do
  gem 'pg'
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
