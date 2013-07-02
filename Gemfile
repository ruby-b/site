source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Production for heroku
group :production do
  gem 'pg'
    gem 'thin'
  gem 'fog'
end

group :development, :test do
  gem 'sqlite3'
  # NOTE: https://github.com/thoughtbot/factory_girl_rails/issues/53
  gem 'i18n_generators'
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
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


# Refinery CMS
gem 'refinerycms', '~> 2.0.0'

# Specify additional Refinery CMS Extensions here (all optional):
gem 'refinerycms-i18n',   '~> 2.0.0'
#  gem 'refinerycms-blog', '~> 2.0.0'
#  gem 'refinerycms-inquiries', '~> 2.0.0'
#  gem 'refinerycms-search', '~> 2.0.0'
#  gem 'refinerycms-page-images', '~> 2.0.0'

gem 'simple_form'
gem "twitter-bootstrap-rails"
gem 'sanitize'
gem 'kaminari'

# rake dev:db:seed
gem 'factory_girl_rails'

# authentication
gem "devise"

# Local, Test
group :test,  :cucumber,  :development do
  gem 'heroku'

  gem "rspec-rails"
  gem "webrat"
  gem "ffaker"
  gem "autotest"
  gem "spork"
  gem "rb-fsevent"
  gem "guard-spork"
  gem "guard-rspec"
  gem "guard-cucumber"
  gem "growl"
  gem "database_cleaner"
  gem 'capybara'
  gem "cucumber-rails",  "~> 1.0",:require =>  false
end

# Deploy with Capistrano
group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano_colors'
  gem 'capistrano_rsync_with_remote_cache'
  gem 'rvm-capistrano'
end

gem 'yaml_db'
gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
gem 'kaminari'
