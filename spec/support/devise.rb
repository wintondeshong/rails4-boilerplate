RSpec.configure do |config|

  puts "[Load spec/support/devise]"

  config.include Devise::TestHelpers, :type => :controller
  config.include Warden::Test::Helpers

  config.before(:each, js: true) do
    Warden.test_mode!
  end

  config.after(:each, js: true) do
    Warden.test_reset!
  end

end
