source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


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

gem "mysql2"
gem "therubyracer"
gem "less-rails"
#gem "devise"
#gem 'bootstrap-sass','2.1' # add 僕ら大好きbootstrap
gem 'twitter-bootstrap-rails'
#gem "simple_form","3.0.0.beta1"
gem "simple_form"
gem 'bcrypt-ruby' # add password用の暗号化
gem "faker" # add DBにデータ入れるために
gem 'will_paginate' # add pagination
gem 'bootstrap-will_paginate'# add pagination with bootstrap
gem 'acts-as-taggable-on'
#gem 'protected_attributes'

group :development,:test do
  gem 'rspec-rails','2.11.0' # add spec
# bundle exec annotate
  gem 'annotate' # make db annotation
  gem'growl' # TDD
  gem'guard' # TDD
  gem'guard-rspec' # TDD
  gem'guard-spork' # TDD
  gem'rb-fsevent',:require=>false # TDD
#  gem 'better_errors' # debug見やすく
  gem 'binding_of_caller' # debug見やすく
  gem 'spork' # TDD
  gem "factory_girl_rails" # TDD mock作る
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.7.2"
  gem "launchy", ">= 2.1.0"
end

gem "jquery-treeview-rails", :git => 'git://github.com/kclair/jquery-treeview-rails.git'
