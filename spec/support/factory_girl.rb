RSpec.configure do |config|

  puts "[Load spec/support/factory_girl]"

  config.include FactoryGirl::Syntax::Methods

end
