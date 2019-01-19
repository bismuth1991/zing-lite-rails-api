class Artist < ApplicationRecord
  validates :name, presence: true
  validates :avatar_url, presence: true
end
