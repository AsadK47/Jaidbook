require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Shows index" do
    visit "/"
    expect(page).to have_content("Index")
  end

  scenario "Shows about" do
    visit "/about"
    expect(page).to have_content("About Us")
    expect(page).to have_content("This is the about page")
  end

  scenario "Adds new posts" do
    visit "/posts/new"
    expect(page).to have_content("Add Post")
    fill_in "Title", with: "Some title"
    fill_in "Body", with: "Some body"
    click_button "Save Post"
    visit "/posts/1" # Should this be redirected to ID instead of hardcoding 1?
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end
end
