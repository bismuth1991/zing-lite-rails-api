class Api::SearchesController < ApplicationController
  def index
    @songs = Song.includes(:artist, :album).where('title ~* ?', params[:query])

    @song_ids = []
    artist_set = Set.new
    album_set = Set.new

    @songs.each do |song|
      artist_set.add(song.artist)
      album_set.add(song.album)
      @song_ids << song.id
    end

    @artists = artist_set.to_a
    @albums = album_set.to_a
   
    render :index
  end
end
