source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '~> 5.0'
gem 'compass-rails', '~> 2.0.4'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

#User authetication
gem 'therubyracer'
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'

#Edit info in place
gem 'best_in_place', '~> 3.0.1'

#Security gems 
gem 'cancancan'
gem 'rolify'

#Images for storing Images
gem 'fog'
gem "mini_magick"
gem 'carrierwave'

#Popup Pictures
gem 'lightbox2-rails'

#Allows tag creation and associatios to be created
gem 'acts-as-taggable-on'

#Allows information to be split into a few pages (pagination)
gem 'will_paginate'

#Basic searching
gem 'chosen-rails'
#gem 'select2-rails'
#gem 'searchkick'
gem 'ransack'

#Settings Config gem
#Look at this for heroku https://github.com/railsconfig/rails_config#working-with-heroku
gem "rails_config"

#JQuery for datepicker and timepicker
gem 'jquery-ui-rails'
gem 'jquery-timepicker-rails'

#HTTP Server
gem 'puma'

#Text Field Editor
gem 'ckeditor'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


group :development, :test do
  #Helps find n+1 queries
  gem 'bullet'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  #Useful for debugging
  gem 'better_errors'
  gem 'binding_of_caller'
  
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

#Gems used in production
group :production do
  gem 'rails_12factor'

  #The database used in production
  gem 'pg'
end