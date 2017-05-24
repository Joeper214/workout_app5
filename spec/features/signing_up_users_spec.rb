require "rails_helper"

RSpec.describe "Signup users" do

  scenario "with valid credentials" do
    visit "/"
    click_link "Sign up"

    fill_in "Email", with: "joeper@example.com"
    fill_in "Password", with: "test_password"
    fill_in "Password confirmation", with: "test_password"

    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully")
  end

  scenario "without valid credentials" do
    visit "/"
    click_link "Sign up"

    fill_in "Email", with: ""
    fill_in "Password", with: ""
    fill_in "Password confirmation", with: ""

    click_button "Sign up"

    expect(page).to have_content("You have not signed up successfully")
  end
end