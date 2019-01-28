class PlaylistSong < ApplicationRecord
  validates :song, uniqueness: { scope: :playlist, message: "Song already exists in playlist" }

  belongs_to :playlist
  belongs_to :song
end
