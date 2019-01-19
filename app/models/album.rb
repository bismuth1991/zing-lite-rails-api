class Album < ApplicationRecord
  validates :name, presence: true
  validates :cover_image_url, presence: true
end
