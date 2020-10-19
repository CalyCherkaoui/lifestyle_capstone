FactoryBot.define do
  factory :category do
    name { Faker::Book.unique.genre }
    priority { Faker::Number.between(from: 1, to: 8) }
  end
end
