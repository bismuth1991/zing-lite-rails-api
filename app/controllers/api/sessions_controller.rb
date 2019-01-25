class Api::SessionsController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:create] 

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user 
      login(@user)
      render 'api/users/show'
    else
      render json: ['Invalid credentials'], status: 401
    end
  end 

  def destroy
    logout!
    render json: {}
  end
end
