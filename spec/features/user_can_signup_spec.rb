require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  scenario "A visitor can signup" do
    visit "/users/sign_up"
    fill_in "user_email", with: "test@test.com"
    fill_in "user_password", with: "testtest"
    fill_in "user_password_confirmation", with: "testtest"
    click_button "Sign up"
    expect(page).to have_content("test@test.com")
  end
end
