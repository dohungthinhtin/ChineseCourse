source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0', '>= 6.0.1'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails' # sass-rails needs to be higher than 3.2
gem 'coffee-rails'
gem 'uglifier'
gem 'bootstrap-sass'


group :development, :test do
  gem 'letter_opener' # in development mode, open mail immediately in browser
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'rails_layout'
  gem 'railroady'
  gem "minitest-rails"
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-rails'
  # gem "autotest-rails"
  # gem 'autotest-growl'
  # gem 'autotest-fsevent'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# gem 'foreigner'
gem 'cancan'
gem 'figaro', '~> 1.2'
gem 'redcarpet'
gem 'prawn'
gem 'stripe'
gem 'resque'
gem 'carrierwave'
gem 'mini_magick'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'



group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'faker'
end

group :production do
  # the following gem is only needed for heroku
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.1.2'
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
gem 'pagy', '~> 3.5'
gem 'ransack'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
