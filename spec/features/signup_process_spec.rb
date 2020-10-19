require 'rails_helper'

RSpec.feature "SignupProcesses", type: :feature do
  scenario "User creates new account" do
    visit "/users/new"
    fill_in('user[name]', with: 'person1')
    click_button('Create your account')
    expect(current_path).to have_content('/')
    expect(page).to have_text("Your account was successfully created! Enjoy your photosynthesis journey.")
  end
end
