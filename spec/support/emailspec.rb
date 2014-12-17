RSpec.configure do |config|

  require "email_spec"

  puts "[Load spec/support/emailspec]"

  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers

end
