require 'rails_helper'
require_relative './session_helpers.rb'

RSpec.feature "Logout", type: :feature do
  scenario "A visitor can logout" do
    sign_up
    sign_in
    click_link "Logout"
    expect(page).to have_no_content("test@test.com")
  end
end
