require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Shows Jaidbook Posts" do
    visit "/"
    expect(page).to have_content("Jaidbook Posts")
  end

  scenario "Adds new posts" do
    visit_homepage_sign_up_and_sign_in
    add_post
  end

  scenario "Shows post after creating a new post" do
    visit_homepage_sign_up_and_sign_in
    click_link "Create Post"
    add_post
    find('#home').click
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end

  scenario "Can read full post" do
    visit_homepage_sign_up_and_sign_in
    click_link "Create Post"
    add_post
    find('#home').click
    click_link "Read More"
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end

  scenario "Can edit posts" do
    visit_homepage_sign_up_and_sign_in
    click_link "Create Post"
    add_post
    find('#home').click
    click_link "Read More"
    click_link "Edit"
    fill_in "Title", with: "Other title"
    fill_in "Body", with: "Other body"
    click_button "Save Post"
    expect(page).to have_content "Other title"
    expect(page).to have_content "Other body"
  end

  scenario "Can delete a post" do
    visit_homepage_sign_up_and_sign_in
    click_link "Create Post"
    add_post
    find('#home').click
    click_link "Read More"
    click_link "Delete"
    expect(page).not_to have_content("Some title")
    expect(page).not_to have_content("Some body")
  end
end
