Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :songs, only: [:index]  
  end 
end
