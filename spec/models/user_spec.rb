# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default("0"), not null
#  unlock_token           :string(255)
#  locked_at              :datetime
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#

require "spec_helper"



describe User do

  # ------------------------------------------------------------------------------
  #
  # Unit Tests
  #
  # ------------------------------------------------------------------------------

  describe "unit tests", :unit do

    before(:each) do
      @user = build(:user)
    end

    # Email
    # ------------------------------------------------

    describe "#email" do
      describe "given invalid #email" do
        it "when invalid string validation fails" do
          @user.email = "invalid-email"
          expect(@user.valid?).to be false
        end
        it "when nil validation fails" do
          @user.email = nil
          expect(@user.valid?).to be false
        end
      end

      describe "given valid #email" do
        it "returns valid" do
          @user.email = "user@example.com"
          expect(@user.valid?).to be true
        end
      end
    end

    # First & Last Name
    # ------------------------------------------------

    describe "#first_name" do
      describe "given valid #first_name" do
        it "when valid string validation passes" do
          @user.first_name = "firstname"
          expect(@user.valid?).to be(true), "expected first_name valid, but instead failed #{@user.errors.inspect}"
        end
      end

      describe "given invalid #first_name" do
        it "when empty string returns invalid" do
          @user.first_name = ""
          expect(@user.valid?).to be false
        end
        it "when nil returns invalid" do
          @user.first_name = nil
          expect(@user.valid?).to be false
        end
      end
    end

    describe "#last_name" do
      describe "given valid #last_name" do
        it "when valid string validation passes" do
          @user.last_name = "lastname"
          expect(@user.valid?).to be(true), "expected last_name valid, but instead failed #{@user.errors.inspect}"
        end
      end

      describe "given invalid #last_name" do
        it "when empty string returns invalid" do
          @user.last_name = ""
          expect(@user.valid?).to be false
        end
        it "when nil returns invalid" do
          @user.last_name = nil
          expect(@user.valid?).to be false
        end
      end
    end

  end

end
