FactoryBot.define do
  factory :artist do
    name { Faker::Music.band }
    avatar_url { Faker::Internet.url }
  end
end