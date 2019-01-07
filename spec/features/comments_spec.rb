require 'rails_helper'

RSpec.feature "Comments", type: :feature do

  scenario "Can add a comment to a post" do
    visit_homepage_sign_up_and_sign_in
    add_post
    expect(page).to have_content("Add Comment")
    fill_in "comment", with: "Some comment"
    click_button "Create Comment"
    expect(page).to have_content("Some comment")
  end

  scenario "Can delete a comment from a post" do
    visit_homepage_sign_up_and_sign_in
    add_post
    expect(page).to have_content("Add Comment")
    fill_in "comment", with: "Some comment"
    click_button "Create Comment"
    expect(page).to have_content("Some comment")
    click_link "[X]"
    expect(page).not_to have_content("Some comment")
  end

end
