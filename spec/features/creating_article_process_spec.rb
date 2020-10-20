require 'rails_helper'

RSpec.feature 'CreatingArticleProcesses', type: :feature do
  scenario 'User log-in and add an article' do
    User.create(name: 'test_person3')
    Category.create(name: 'category1', priority: 1)
    visit '/'
    click_link('Log-in')
    expect(current_path).to have_content('/login')
    fill_in('session[name]', with: 'test_person3')
    click_button('Log-in')
    expect(current_path).to have_content('/')
    expect(page).to have_text('Add-Article')
    click_link('Add-Article')
    expect(current_path).to have_content('/articles/new')
    fill_in('article[title]', with: 'THIS IS A TEST')
    fill_in('article[text]', with: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    # find('input[type="file"]').set('./spec/factories/ada_lovelace.jpg')
    attach_file('article[image]', './spec/factories/ada_lovelace.jpg')
    within 'select#article_category_id' do
      find("option[value='1']").click
    end
    click_button('Create Article')
    expect(current_path).to have_content('/articles/')
    expect(page).to have_text('Article was successfully created.')
  end
end
