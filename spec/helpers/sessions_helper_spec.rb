require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  # let(:user) { User.create(name: 'person') }
  user_logged = User.create(name: 'person')
  it 'Create session with a user to be logged in' do
    log_in(user_logged)
    expect(session[:user_id]).to eq(user_logged.id)
  end
end
