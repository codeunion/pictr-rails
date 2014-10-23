require 'features/helper'

describe "User Account Spec" do
   describe "Creating an Account" do
    it "Persists the user in the database" do
      visit root_path
      click_link_or_button "create_account"
      within "#user_form" do
        fill_in ".user_name", with: "scott"
        fill_in ".email_address", with: "scott@example.com"
        fill_in ".password", with: "password"
        fill_in ".password_confirm", with: "password"

        click_link_or_button ".create_user"
      end

      expect(page).to have_content("Account created for scott@example")
      expect(User.exists?(email_address: "scott@example.com")).to be_truthy
      expect(curent_path).to eq(root_path)
    end
  end
end