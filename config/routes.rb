Rails.application.routes.draw do
  post "users/create", to:"users#create"
  post "users/login", to:"users#login"
  resources :users
  resources :todos
end
