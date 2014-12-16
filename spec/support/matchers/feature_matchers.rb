require 'rspec/expectations'

# Tests if the page body contains a specific html comment <!-- #{expected} -->
RSpec::Matchers.define :contain_comment do |expected|

  match do |page|
    Capybara.string(page.body).has_xpath? "//comment()[. = ' #{expected} ']"
  end

  failure_message do |actual|
    "expected the following content to include #{expected.inspect} in #{actual.body}"
  end

  failure_message_when_negated do |actual|
    "expected the following content not to include #{expected.inspect} in #{actual.body}"
  end

end
