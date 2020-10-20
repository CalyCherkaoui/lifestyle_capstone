require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users/new' do
    it 'sign_up works!' do
      get new_user_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /user/:id' do
    it 'user profile work!' do
      author4 = User.create(name: 'test_person4')

      get user_path(author4)
      expect(response).to have_http_status(:success)
    end
  end
end
