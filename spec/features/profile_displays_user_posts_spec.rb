# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Profile', type: :feature do
  scenario 'Signed in users have a profile with their email ' do
    visit_homepage_sign_up_and_sign_in
    find('#user-profile').click
    expect(page).to have_content('test@test.com')
  end

  scenario 'Profile shows posts' do
    visit_homepage_sign_up_and_sign_in
    add_post
    find('#user-profile').click
    expect(page).to have_content('Some title')
    expect(page).to have_content('Some body')
  end

  scenario 'Profile does not show other users posts' do
    visit_homepage_sign_up_and_sign_in_2
    add_post_2
    find('#user-profile').click
    expect(page).not_to have_content('Some title')
    expect(page).not_to have_content('Some body')
  end
end
