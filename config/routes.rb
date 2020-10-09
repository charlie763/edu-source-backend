Rails.application.routes.draw do
  resources :users
  resources :resources, only: [:create, :index, :show]
end
