class Api::SongsController < ApplicationController
  def index 
    @songs = Song.includes(:artist, :album).limit(20).offset(params[:off_set]).order(:id)

    artist_set = Set.new
    album_set = Set.new

    @songs.each do |song|
      artist_set.add(song.artist)
      album_set.add(song.album)
    end

    @artists = artist_set.to_a
    @albums = album_set.to_a

    render :index
  end
end
