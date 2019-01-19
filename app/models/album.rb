class Album < ApplicationRecord
  validates :name, presence: true
  validates :cover_image_url, presence: true

  has_many :songs
end
