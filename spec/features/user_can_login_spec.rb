# frozen_string_literal: true

require 'rails_helper'
require_relative './session_helpers.rb'

RSpec.feature 'Login', type: :feature do
  scenario 'A visitor can login' do
    sign_up
    visit new_user_session_path
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'testtest'
    click_button 'Log in'
    expect(page).to have_content('test@test.com')
  end
end
