require 'features/helper'

feature "User Account Spec" do

  scenario "A guest may create an account" do
    guest = Fixtures::Users[:guest]

    visit root_path
    click_link_or_button "create_account"

    fill_in "user_email", with: guest[:email]
    fill_in "user_nickname", with: guest[:nickname]
    fill_in "user_password", with: guest[:password]
    fill_in "user_password_confirmation", with: guest[:password]

    click_link_or_button "Sign up"

    within "nav" do
      expect(page).to have_content("Welcome, #{guest[:nickname]}")
    end

    expect(page).to have_content("You have signed up successfully")
    expect(User.exists?(email: guest[:email])).to be_truthy
    expect(current_path).to eq(root_path)
  end

  scenario "All create account fields are required" do
    visit root_path
    click_link_or_button "create_account"

    click_link_or_button "Sign up"

    expect(current_path).to eq(user_registration_path)
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Nickname can't be blank")
    expect(page).to have_content("Password can't be blank")
  end

  context "A registered user" do
    let(:registered_user) { Fixtures::Users[:registered] }
    before { User.create(registered_user) }

    scenario "may log in" do
      login_as(registered_user)

      within "nav" do
        expect(page).to have_content("Welcome, #{registered_user[:nickname]}")
      end
      expect(page).to have_content("Signed in successfully")
      expect(current_path).to eq(root_path)
    end

    scenario "may log out" do
      login_as(registered_user)

      click_link_or_button "sign_out"

      expect(page).to have_content("Signed out successfully")
    end
  end
end