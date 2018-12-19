
    def sign_up
      visit new_user_registration_path
      fill_in "user_email", with: "test@test.com"
      fill_in "user_password", with: "testtest"
      fill_in "user_password_confirmation", with: "testtest"
      click_button "Sign up"
      click_link "Logout"
    end

    def sign_in
      visit new_user_session_path
      fill_in 'Email', with: "test@test.com"
      fill_in 'Password', with: "testtest"
      click_button 'Log in'
    end
