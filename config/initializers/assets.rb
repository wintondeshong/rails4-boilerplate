# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += [
                                               "vendor/backbone-1.1.2.js",
                                               "vendor/backbone-relational-0.9.0.js",
                                               "vendor/jquery-1.11.2.js",
                                               "vendor/lodash-3.2.0.js",
                                               "vendor/bootstrap-3.3.2.js",
                                               "vendor/bootstrap-3.3.2.css",
                                               "vendor/bootstrap-theme-3.3.2.css",
                                               "vendor/bootstrap-datepicker.js",
                                               "vendor/bootstrap-datepicker.css"
                                              ]
