Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :resources, only: [:create, :index, :show] do
    resources :comments, only: [:create, :index]
  end
  post '/login', to: 'sessions#create'
  get '/authorize', to: 'sessions#show'
end
