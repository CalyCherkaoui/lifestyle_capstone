FactoryBot.define do
  factory :user do
    name { Faker::Name.unique.name }

    factory :user_random do
      sequence(:name) { |n| "person#{n}"}
    end
  end
end
