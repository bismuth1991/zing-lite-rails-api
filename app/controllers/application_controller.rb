class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection

  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end 

  def current_user 
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def logout!
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
  end
end
