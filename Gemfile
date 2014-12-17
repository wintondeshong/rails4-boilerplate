# 1. Specify ruby version
# 2. Maintain order of groups
#   - default
#   - production
#   - staging
#   - beta
#   - assets
#   - test
#   - development
# 3. Alphabetical in each group
# 4. Sourced git repos up top
source 'https://rubygems.org'

ruby '2.1.5'

group :default do
  gem 'coffee-rails', '~> 4.1.0'                       # JavaScript abstraction
  gem 'devise'                                         # Rack based Authentication
  gem 'haml'                                           # Html abstraction
  gem 'haml-rails'
  gem 'jbuilder', '~> 2.0'                             # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jquery-rails'
  gem 'mysql2'
  gem 'rails', '4.2.0.rc3'
  gem 'sass-rails', '~> 5.0'                           # CSS abstraction
  gem 'sdoc', '~> 0.4.0', group: :doc                  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '>= 1.3.0'
  gem 'unicorn'                                        # Default/Preferred Web Server
  gem 'unicorn-rails'                                  # Sets Unicorn as default web server with 'rails s'
end

group :test do
  gem 'spork', :github => 'sporkrb/spork'              # Without using master spork does not work with Rails 4 @see https://github.com/sporkrb/spork/issues/223
  gem 'spork-rails', :github => 'sporkrb/spork-rails'  # Without using master spork does not work with Rails 4 @see https://github.com/sporkrb/spork/issues/223

  gem 'capybara'                                       # Required by RSpec to run feature tests
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'poltergeist'
  gem 'rspec'                                          # Testing framework
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'dotenv'                                         # Used to supplement secrets.yml for pre-rails loaded environment variables
  gem 'factory_girl_rails'                             # Fixture replacement
  gem 'pry'                                            # Debugger
  gem 'pry-byebug'                                     # Pry navigation commands
  gem 'pry-rails'                                      # Initializes pry in rails
  gem 'rspec-rails'
  gem 'spring'                                         # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'web-console', '~> 2.0'                          # Access an IRB console on exception pages or by using <%= console %> in views
end

group :development do
  gem 'annotate'                                       # Generates schema information at top of models
  gem 'erb2haml'                                       # Adds rake commands to bulk convert ERB to HAML
  gem 'guard'                                          # Watcher
  gem 'guard-bundler', require: false                  # Auto install/update bundle
  gem 'guard-rake'                                     # Auto run rake tasks
  gem 'guard-rspec', require: false                    # Auto runs specs
  gem 'guard-spork'                                    # Drb server for rspec to run Rails in background
end
