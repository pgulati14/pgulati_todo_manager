Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get "todos", to: "todos#index"
  post "users/login" , to: "users#login"
  #get "todos/:id", to: "todos#show"
  resources :todos
  #resources :users  #for users
  get "users", to: "users#index"
  #post "todos/create", to: "todos#create"
  #get "todos/:id", to: "todos#show"
  #patch "todos/:id", to: "todos#update"
  #resources "users"
  #post "/users/login"

end
