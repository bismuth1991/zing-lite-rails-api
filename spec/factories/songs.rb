FactoryBot.define do
  factory :song do
    title { Faker::Movie.quote }
    url { Faker::Internet.url }
    artist_id { Faker::Number.between(1, 5) }
    album_id { Faker::Number.between(1, 5) }
  end
end