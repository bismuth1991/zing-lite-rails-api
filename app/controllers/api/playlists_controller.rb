class Api::PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.includes(songs: [:artist, :album]).where('user_id = ?', params[:user_id])

    @songs = []
    @playlists.each do |playlist|
      @songs |= playlist.songs
    end

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

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      @song_ids = params[:playlist][:song_ids]
      render :show
    else
      render json: @playlist.errors.full_messages, status: 422
    end
  end

  def update
    @playlist = Playlist.find(params[:id])

    if @playlist.update(playlist_params)
      render :show
    else
      render json: @playlist.errors.full_messages, status: 422
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy

    render json: @playlist.id 
  end

  private 
  
  def playlist_params
    params.require(:playlist).permit(:name, :user_id, song_ids: [])
  end
end
