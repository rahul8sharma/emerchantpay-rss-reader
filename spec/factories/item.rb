FactoryBot.define do
  factory :item do
    link { Faker::Internet.url }
    description { Faker::Internet.url }
    title { Faker::Internet.username }
    association :feed
  end
end
