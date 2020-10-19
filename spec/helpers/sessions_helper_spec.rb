require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SessionsHelper, type: :helper do
  let(:user) { User.create(name: 'person') }
  # @user = FactoryBot.create(:user)
  it 'Create session with a user to be logged in' do
    log_in(user)
    expect(session[:user_id]).to eq(:user)
  end
end
