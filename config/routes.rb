Rails.application.routes.draw do
  resources :playlists, only: [:create, :update, :index, :show]
  resources :users, only: [:create]
  resources :resources, only: [:create, :index, :show] do
    resources :comments, only: [:create, :index]
  end
  post '/login', to: 'sessions#create'
  get '/authorize', to: 'sessions#show'
end
