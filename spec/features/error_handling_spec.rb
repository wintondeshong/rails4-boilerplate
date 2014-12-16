require "rails_helper"

feature "Error Handling" do
  scenario "User visits non-existent destination and receives 404" do
    visit "/invalid-route"
    expect(page).to have_xpath "//comment()[. = ' error_404 - do not remove ']"
  end

  scenario "User visits destination that raises exception and receives 500" do
    visit "/errors/error_500_fake"
    expect(page).to have_xpath "//comment()[. = ' error_500 - do not remove ']"
  end
end
