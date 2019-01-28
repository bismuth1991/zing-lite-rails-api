class Playlist < ApplicationRecord
  validates :name, :cover_image_url, presence: true

  belongs_to :user

  has_many :playlist_songs, dependent: :destroy
  has_many :songs, through: :playlist_songs

  def self.random_cover_image
    random_images = [
      "https://www.dropbox.com/s/srpnqhkerh2r22e/1.jpg?dl=1",
      "https://www.dropbox.com/s/i2mgk4kt4p27xg7/2.jpg?dl=1",
      "https://www.dropbox.com/s/lt43tlo1y710bp6/3.jpg?dl=1",
      "https://www.dropbox.com/s/hk30ojq1h435vzh/4.jpg?dl=1",
      "https://www.dropbox.com/s/apyxf0vj6ew2m8h/5.jpg?dl=1",
      "https://www.dropbox.com/s/4jpszexq7i1zhhg/6.jpg?dl=1",
      "https://www.dropbox.com/s/6bbkpvt8p7zjd1n/7.jpg?dl=1",
      "https://www.dropbox.com/s/k3fyqtzc6s8q09w/8.jpg?dl=1",
      "https://www.dropbox.com/s/fmrrw6j4k0lorfo/9.jpg?dl=1",
      "https://www.dropbox.com/s/lt79xyad5c1wl49/10.jpg?dl=1",
      "https://www.dropbox.com/s/8kjsdoxb2x26ee0/11.jpg?dl=1",
      "https://www.dropbox.com/s/xrfg5uk14dznygb/12.jpg?dl=1"
    ]

    random_images.sample
  end
end
