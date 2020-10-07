Rails.application.routes.draw do
  resources :resources, only: [:create, :index, :show]
end
