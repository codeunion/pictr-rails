require 'features/helper'

feature "Image Upload Spec" do
  scenario "A logged in user may upload a picture" do
    user_hash = Fixtures::Users[:registered]
    user = User.create(user_hash)

    login_as(user)
    click_link_or_button "upload_picture"

    attach_file "picture_picture", Fixtures.image_path("doggie.jpg")

    fill_in "picture_caption", with: "Awesome pic!"
    fill_in "picture_description", with: "This is the pic's description"

    click_link_or_button "commit"

    latest_picture = Picture.latest_picture
    expect(latest_picture.owner).to_eq user
    expect(page).to have_content("You've uploaded a picture!")
  end

  scenario "A picture must have all required fields to be uploaded" do
    user_hash = Fixtures::Users[:registered]
    user = User.create(user_hash)

    login_as(user)
    click_link_or_button "upload_picture"

    click_link_or_button "commit"

    expect(picture.last).to be_nil
    expect(page).to have_content("Caption can't be blank")
    expect(page).to have_content("Picture must be provided to upload")
    expect(page.current_path).to eq pictures_path
  end

  scenario "A guest may not upload a picture" do
    visit root_path
    expect(page).not_to have_selector "#upload_picture"
    visit new_picture_path
    expect(page).current_path.to eq new_user_session_path
  end
end