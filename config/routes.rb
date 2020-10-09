Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :resources, only: [:create, :index, :show]
end
