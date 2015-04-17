require "rubygems"
require "spork"
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  puts "[Spork.prefork]"

  ENV["RAILS_ENV"] ||= "test"
  require File.expand_path("../../config/environment", __FILE__)
  require "email_spec"
  require "factory_girl"
  require "rspec/rails"

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories. (ie. DatabaseCleaner, FactoryGirl, etc...)
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|

    config.use_transactional_fixtures = false

    # rspec-expectations config goes here. You can use an alternate
    # assertion/expectation library such as wrong or the stdlib/minitest
    # assertions if you prefer.
    config.expect_with :rspec do |expectations|
      expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    # rspec-mocks config goes here. You can use an alternate test double
    # library (such as bogus or mocha) by changing the `mock_with` option here.
    config.mock_with :rspec do |mocks|
      mocks.verify_partial_doubles = true
    end

    # config.filter_run :focus
    # config.run_all_when_everything_filtered = true
    # config.disable_monkey_patching!

    # Many RSpec users commonly either run the entire suite or an individual
    # file, and it's useful to allow more verbose output when running an
    # individual spec file.
    # if config.files_to_run.one?
    #   config.default_formatter = 'doc'
    # end

    # Print the 10 slowest examples and example groups at the
    # end of the spec run, to help surface which specs are running
    # particularly slow.
    # config.profile_examples = 1000 # Use in CI
    config.order = :random
    Kernel.srand config.seed

  end
end

Spork.each_run do
  # This code will be run each time you run your specs.
  puts "[Spork.each_run]"

  ActiveSupport::Dependencies.clear
  FactoryGirl.reload
end
