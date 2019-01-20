class Api::SongsController < ApplicationController
  def index 
    @songs = Song.limit(20).offset(params[:off_set]).order(:id)

    artist_ids = @songs.map { |song| song.artist_id }
    album_ids = @songs.map { |song| song.album_id }

    @artists = Artist.find(artist_ids)
    @albums = Album.find(album_ids)

    render :index
  end
end
