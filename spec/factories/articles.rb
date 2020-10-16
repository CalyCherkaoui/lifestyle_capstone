FactoryBot.define do
  factory :article do
    title { Faker::JapaneseMedia::StudioGhibli.movie }
    text { Faker::Lorem.paragraphs }
    author_id { FactoryBot.create(:user).id }
    category_id { FactoryBot.create(:category).id }
  end
end
