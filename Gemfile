source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Upload files
gem 'carrierwave', '~> 2.2', '>= 2.2.2'

# Pagination
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'

# Image resizing
gem 'file_validators', '~> 2.3'
gem 'mini_magick', '~> 4.5', '>= 4.5.1'

# User authentication
gem 'devise', '~> 4.2'
gem 'omniauth-facebook', '~> 4.0'
gem "omniauth-rails_csrf_protection", '~> 1.0'

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.4.1'
gem 'font-awesome-sass', '~> 4.6.1'
gem 'sassc-rails', '>= 2.1.0'

# Test coverage
gem 'coveralls', require: false

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Auto annotations
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use ENV vars in Rails
  gem 'figaro', '~> 1.1', '>= 1.1.1'
  # Help to kill N+1 queries and unused eager loading.
  gem 'bullet', '~> 6.1', '>= 6.1.4'
  # Code metric tool for rails codes
  gem 'rails_best_practices', '~> 1.21'
  # Helps to keep the database in a good shape
  gem 'active_record_doctor', '~> 1.8'
  # Code quality reporter
  gem 'rubycritic', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'

  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.18'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
