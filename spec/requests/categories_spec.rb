require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /categories' do
    it 'works! returns http success' do
      get categories_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /categories/:id' do
    it 'works! returns http success' do
      category2 = Category.create(name: 'category4', priority: 2)
      get category_path(category2)
      expect(response).to have_http_status(:success)
    end
  end
end
