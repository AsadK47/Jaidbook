
    def sign_up
      visit new_user_registration_path
      fill_in "user_email", with: "test@test.com"
      fill_in "user_password", with: "testtest"
      fill_in "user_password_confirmation", with: "testtest"
      click_button "Sign up"
      click_link "Logout"
    end

    def sign_up_2
      visit new_user_registration_path
      fill_in "user_email", with: "2test@test.com"
      fill_in "user_password", with: "2testtest"
      fill_in "user_password_confirmation", with: "2testtest"
      click_button "Sign up"
      click_link "Logout"
    end

    def sign_in
      visit new_user_session_path
      fill_in 'Email', with: "test@test.com"
      fill_in 'Password', with: "testtest"
      click_button 'Log in'
    end

    def sign_in_2
      visit new_user_session_path
      fill_in 'Email', with: "2test@test.com"
      fill_in 'Password', with: "2testtest"
      click_button 'Log in'
    end

    def add_post
      visit "/posts/new"
      expect(page).to have_content("Add Post")
      fill_in "Title", with: "Some title"
      fill_in "Body", with: "Some body"
      click_button "Save Post"
      expect(page).to have_content("Some title")
      expect(page).to have_content("Some body")
    end

    def add_post_2
      visit "/posts/new"
      expect(page).to have_content("Add Post")
      fill_in "Title", with: "Second title"
      fill_in "Body", with: "Second body"
      click_button "Save Post"
      expect(page).to have_content("Second title")
      expect(page).to have_content("Second body")
    end

    def visit_homepage_sign_up_and_sign_in
      visit "/"
      sign_up
      sign_in
    end

    def visit_homepage_sign_up_and_sign_in_2
      visit "/"
      sign_up_2
      sign_in_2
    end
