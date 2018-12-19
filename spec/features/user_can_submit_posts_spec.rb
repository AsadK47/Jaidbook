require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  def add_post
    visit "/posts/new"
    expect(page).to have_content("Add Post")
    fill_in "Title", with: "Some title"
    fill_in "Body", with: "Some body"
    click_button "Save Post"
    visit "/posts/1" # Should this be redirected to ID instead of hardcoding 1?
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end

  scenario "Shows Jaidbook Posts" do
    visit "/"
    expect(page).to have_content("Jaidbook Posts")
  end

  scenario "Shows about" do
    visit "/about"
    expect(page).to have_content("About Us")
    expect(page).to have_content("This is the about page")
  end

  scenario "Adds new posts" do
    add_post
  end

  scenario "Shows post after creating a new post" do
    visit "/"
    expect(page).to have_content("Jaidbook Posts")
    click_link "Create Post"
    add_post
    click_link "Home"
    visit "/"
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end

  scenario "Can read full post" do
    visit "/"
    click_link "Create Post"
    add_post
    click_link "Home"
    visit "/"
    click_link "Read More"
    visit "/posts/1"
    expect(page).to have_content("Some title")
    expect(page).to have_content("Some body")
  end

  scenario "Can edit posts" do
    visit "/"
    click_link "Create Post"
    add_post
    click_link "Home"
    click_link "Read More"
    click_link "Edit"
    visit "/posts/1/edit"
    fill_in "Title", with: "Other title"
    fill_in "Body", with: "Other body"
    click_button "Save Post"
    visit "/posts/1"
    expect(page).to have_content "Other title"
    expect(page).to have_content "Other body"
  end
end
