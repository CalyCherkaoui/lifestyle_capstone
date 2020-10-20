require 'rails_helper'

RSpec.describe "Articles", type: :request do
  
  describe "GET /articles" do
    it "works! returns http success" do
      get articles_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /articles/:id" do
    it "works! returns http success" do
        author4 = User.create(name: 'test_person4')

        category2= Category.create(name: 'category4', priority: 2)

        file = Rails.root.join('spec', 'factories', 'ada_lovelace.jpg')
        image_test = ActiveStorage::Blob.create_after_upload!(
                                          io: File.open(file, 'rb'),
                                          filename: 'ada_lovelace.jpg',
                                          content_type: 'image/jpg')
      
        article_test = Article.create(title: 'THIS IS A TEST',
                      text: 'ABCDEFGHIJKL',
                      image: image_test,
                      author_id: author4.id,
                      category_id: category2.id)
      

      get article_path(article_test)
      expect(response).to have_http_status(:success)
    end
  end
end
