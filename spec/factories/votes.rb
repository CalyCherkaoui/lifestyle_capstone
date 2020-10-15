FactoryBot.define do
  factory :vote do
    user_id { FactoryBot.create(:user).id }
    article_id { FactoryBot.create(:article).id }
  end
end