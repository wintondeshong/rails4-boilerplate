require "spec_helper"

# save_and_open_page

feature "Registration" do

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
  end

  scenario "Authenticated user can logout"
  scenario "User can request to reset their password"
end
