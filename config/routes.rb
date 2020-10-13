Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :resources, only: [:create, :index, :show]
  post '/login', to: 'sessions#create'
  get '/authorize', to: 'sessions#show'
end
