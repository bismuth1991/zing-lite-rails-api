FactoryBot.define do
  factory :artist do
    name { Faker::Music.album }
    cover_image_url { Faker::Internet.url }
  end
end