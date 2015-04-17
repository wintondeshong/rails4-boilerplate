require "spec_helper"

feature "Error Handling" do

  # ------------------------------------------------------------------------------
  #
  # Functional Tests
  #
  # ------------------------------------------------------------------------------

  describe "functional tests", :functional do

    scenario "User visits non-existent destination and receives 404" do
      visit "/invalid-route"
      expect(page).to contain_comment "error_404 - do not remove"
    end

    scenario "User visits destination that raises exception and receives 500" do
      visit errors_error_500_fake_path
      expect(page).to contain_comment "error_500 - do not remove"
    end

  end

end
