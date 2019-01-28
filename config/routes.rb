Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    
    resources :songs, only: [:index]  
    resources :searches, only: [:index]
    resources :playlists
  end 
end
