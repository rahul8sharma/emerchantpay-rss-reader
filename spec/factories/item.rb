FactoryBot.define do
  factory :item do
    link { Faker::Internet.url }
    description { 'asd' }
    title { 'asdasd' }
    association :feed
  end
end
