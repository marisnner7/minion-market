# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'ini
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem for browser make sure understand our css
gem 'autoprefixer-rails'
# Great Icons
gem 'font-awesome-sass', '~> 5.6.1'
# Easily generate forms
gem 'simple_form'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'devise'

gem 'cloudinary', '~> 1.12.0'
gem 'pg_search'
gem 'pundit'

gem 'geocoder'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'listen', '~> 3.2'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'capybara', '>= 2.15'
  gem 'rails-erd'
  gem 'selenium-webdriver'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'rubocop'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
