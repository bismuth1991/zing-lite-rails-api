class Song < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  belongs_to :album
  belongs_to :artist
end
