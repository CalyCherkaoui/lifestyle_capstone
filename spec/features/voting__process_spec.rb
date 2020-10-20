require 'rails_helper'

RSpec.feature 'VotingProcesses', type: :feature do
  scenario 'Visitor log-in read article and like it' do
    author4 = User.create(name: 'test_person4')

    category2 = Category.create(name: 'category4', priority: 2)

    file = Rails.root.join('spec', 'factories', 'ada_lovelace.jpg')
    image_test = ActiveStorage::Blob.create_after_upload!(
      io: File.open(file, 'rb'),
      filename: 'ada_lovelace.jpg',
      content_type: 'image/jpg'
    )

    Article.create(title: 'THIS IS A TEST',
                   text: 'ABCDEFGHIJKL',
                   image: image_test,
                   author_id: author4.id,
                   category_id: category2.id)

    visitor = User.create(name: 'test_person5')

    visit '/'
    click_link('Log-in')
    expect(current_path).to have_content('/login')
    fill_in('session[name]', with: 'test_person5')
    click_button('Log-in')
    expect(current_path).to have_content('/')

    within 'div.latest_article' do
      find('.text').click
    end

    expect(current_path).to have_content('/articles/')

    expect(page).to have_text('THIS IS A TEST')

    within 'div.article_show_foot' do
      click_link('like')
    end

    expect(page).to have_text('Thank you for your like!')
  end

  scenario 'Visitor log-in read article and like it' do
    author4 = User.create(name: 'test_person4')

    category2 = Category.create(name: 'category4', priority: 2)

    file = Rails.root.join('spec', 'factories', 'ada_lovelace.jpg')
    image_test = ActiveStorage::Blob.create_after_upload!(
      io: File.open(file, 'rb'),
      filename: 'ada_lovelace.jpg',
      content_type: 'image/jpg'
    )

    Article.create(title: 'THIS IS A TEST',
                   text: 'ABCDEFGHIJKL',
                   image: image_test,
                   author_id: author4.id,
                   category_id: category2.id)

    visitor = User.create(name: 'test_person5')

    visit '/'
    click_link('Log-in')
    expect(current_path).to have_content('/login')
    fill_in('session[name]', with: 'test_person5')
    click_button('Log-in')
    expect(current_path).to have_content('/')

    within 'div.latest_article' do
      find('.text').click
    end

    expect(current_path).to have_content('/articles/')

    expect(page).to have_text('THIS IS A TEST')

    within 'div.article_show_foot' do
      click_link('like')
    end

    expect(page).to have_text('Thank you for your like!')

    within 'div.article_show_foot' do
      click_link('Dislike')
    end

    expect(page).to have_text(' You disliked this article!')
  end
end
