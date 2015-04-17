require "spec_helper"
# save_and_open_page

feature "Registration", :js do

  # ------------------------------------------------------------------------------
  #
  # Functional Tests
  #
  # ------------------------------------------------------------------------------

  describe "functional tests", :functional do

    scenario "Unauthenticated user can sign up for a new account" do
      user = FactoryGirl.build(:user)

      visit new_user_registration_path
      fill_in "user_first_name", :with => user.first_name
      fill_in "user_last_name", :with => user.last_name
      fill_in "user_email", :with => user.email
      fill_in "user_password", :with => user.password
      fill_in "user_password_confirmation", :with => user.password
      click_on "Sign up"

      expect(current_path).to eq root_path
      expect(User.count).to eq 1
      open_email user.email, :with_subject => "Confirmation instructions"
    end

    scenario "Authenticated user can logout from homepage" do
      user = FactoryGirl.create(:user)
      login_as user, :scope => :user

      visit root_path
      click_on "Log out"

      expect(current_path).to eq root_path
    end

    scenario "User can request to reset their password" do
      user = FactoryGirl.create(:user)

      visit new_user_password_path
      fill_in "user_email", :with => user.email
      click_on "Send me reset password instructions"

      expect(current_path).to eq new_user_session_path
      open_email user.email, :with_subject => "Reset password instructions"
    end
  end

end
