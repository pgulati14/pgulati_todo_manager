Rails.application.routes.draw do
  #get "users", to: "users#index"
  post "users/create", to: "users#create"
  post "users/login" , to: "users#login"
  #get "users/:id", to: "users#show"
  resources :users
  resources :todos
end
