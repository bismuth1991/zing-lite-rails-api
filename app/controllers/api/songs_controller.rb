class Api::SongsController < ApplicationController
  def index 
    @songs = Song
      .includes(:artist, :album)
      .limit(20)
      .offset(params[:off_set].to_i).order(:id)

    render :index
  end
end
