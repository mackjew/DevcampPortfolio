# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( application.css ) # it seems that this works even without this line
Rails.application.config.assets.precompile += %w( blogs.css ) # it seems that this works even without this line
Rails.application.config.assets.precompile += %w( portfolios.css ) # it seems that this works even without this line

# config/initializers/assets.rb
Rails.application.config.assets.precompile += %w(bootstrap.js popper.js)

