FactoryBot.define do
  factory :feed do
    url { Faker::Internet.url }
  end
end
