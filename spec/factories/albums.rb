FactoryBot.define do
  factory :album do
    name { Faker::Music.album }
    cover_image_url { Faker::Internet.url }
  end
end