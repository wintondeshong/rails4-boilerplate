require "factory_girl"

FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end

    first_name "Test"
    last_name "User"
    password "password"
    password_confirmation "password"
  end

end
