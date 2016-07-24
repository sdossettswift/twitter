require "test_helper"

class UserCanSignInTest < Capybara::Rails::TestCase

      test "user can sign in" do

          visit root_path
          click_link "Sign Up"

          fill_in('Email', :with => "sarah1@example.com")
          fill_in('Name', :with => "sarah1")
          fill_in('Password', :with => "12345678")
          fill_in('Password confirmation', :with => "12345678")
          click_button "Create User"

          visit root_path
          click_link "Sign In"

          fill_in('Name', :with => "sarah1")
          fill_in('Password', :with => "12345678")
          click_button "Sign In"
          assert_content page, "Welcome to Gauzip!"

      end

end
