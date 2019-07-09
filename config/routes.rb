Rails.application.routes.draw do
  devise_for :users
  resources :tracks
  resources :albums
  resources :artist_comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'artist#index'
  get '/artist' => 'artist#index'
  
  # get '/artists-info' => 'artist#info'
  get '/artist/new' => 'artist#new'
  get '/artist/:id' => 'artist#show'

  post '/artists' => 'artist#create'
  post '/artists/:id' => 'artist#create_comment'
end
