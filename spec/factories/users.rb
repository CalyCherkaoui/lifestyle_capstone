FactoryBot.define do
  factory :user do
    name { Faker::Name.unique.name}
    user_id {} 
  end
end