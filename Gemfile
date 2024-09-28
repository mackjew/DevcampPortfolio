source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rubygems-update", "3.3.22"  # or the latest compatible version

gem 'bundler', '2.4.12'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

#manually addding gem for jquery to Gemfile
gem 'jquery-rails'

#manually entered for Udemy course. allows for creation of human readable routes.
gem 'friendly_id', '~> 5.4.0'
#manually entered for Udemy course. Library for implmenting authentication procedures/logins for my site.
gem 'devise', '~> 4.9', '>= 4.9.2'


# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# dartsass-sprockets from : https://github.com/tablecheck/dartsass-sprockets
gem 'dartsass-sprockets'

# bootstrap css from : https://github.com/twbs/bootstrap-rubygem/blob/main/README.md
gem 'bootstrap', '~> 5.3.3'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-byebug'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem 'petergate', '~> 3.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'

# my own gem built from Udemy course. right now it is still coming from GitHub as for some reason RubyGems.com refuses to send me a confirmation email.
gem 'mj_view_tool', git: 'https://github.com/mackjew/mj_view_tool'

gem 'kaminari', '~> 1.2', '>= 1.2.2'

gem 'html5sortable-rails', '~> 0.9.3.1'

gem 'jquery-ui-rails', '~> 7.0'

#from Deanin video on ROR 7  Drag and Drop Speedrun https://www.youtube.com/watch?v=KJAHZfdO7sI
gem 'acts_as_list', '~> 1.2', '>= 1.2.2'

# required for image file upload
gem 'carrierwave', '~> 3.0', '>= 3.0.7'
gem 'mini_magick', '~> 4.5', '>= 4.5.1'
gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'

# managing nested forms,uses jquery
gem 'cocoon', '~> 1.2', '>= 1.2.15'

# used for displaying notifications on screen as the user types input or other notificaitons
gem "gritter", "1.2.0"
