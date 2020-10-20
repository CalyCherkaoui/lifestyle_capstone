require 'rails_helper'

# rubocop:disable Metrics/BlockLength

RSpec.feature "LoginProcesses", type: :feature do
  scenario "User log-in to her/his account" do
    User.create(name: 'test_person')
    visit "/login"
    expect(current_path).to have_content('/login')
    fill_in('session[name]', with: 'test_person')
    click_button('Log-in')
    expect(current_path).to have_content('/')
    expect(page).to have_text("You have logged-in successfully!")
  end

  scenario "User log-out from her/his account" do
    User.create(name: 'test_person2')
    visit "/"
    click_link('Log-in')
    expect(current_path).to have_content('/login')
    fill_in('session[name]', with: 'test_person2')
    click_button('Log-in')
    expect(current_path).to have_content('/')
    expect(page).to have_text("You have logged-in successfully!")
    click_link('Log-out')
    expect(current_path).to have_content('/')
    expect(page).not_to have_text("Profile")
  end
end
