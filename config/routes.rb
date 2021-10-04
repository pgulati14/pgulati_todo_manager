Rails.application.routes.draw do
  get "users", to: "users#index"
  post "users/create", to: "users#create"
  get "users/:id", to: "users#show"
  resources :todos
end
