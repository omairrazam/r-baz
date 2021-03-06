# Be sure to restart your server when you modify this file.

# Version of your assets_old, change this if you want to expire all your assets_old.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( spree/frontend/classie.js )
Rails.application.config.assets.precompile += %w( spree/frontend/uisearch.js )
Rails.application.config.assets.precompile += %w( spree/frontend/zjquery.etalage.min.js )
Rails.application.config.assets.precompile += %w( spree/frontend/etalage.css )
Rails.application.config.assets.precompile += %w( spree/frontend/owl.carousel.js )
Rails.application.config.assets.precompile += %w( spree/frontend/owl.carousel.css )