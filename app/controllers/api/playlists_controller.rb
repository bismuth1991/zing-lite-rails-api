class Api::PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.where('user_id = ?', params[:user_id])
    render :index
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
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
