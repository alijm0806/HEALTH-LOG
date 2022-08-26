Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/vitamins" => "vitamins#index"
  get "/vitamins/:id" => "vitamins#show"
  post "/vitamins" => "vitamins#create"
  patch "/vitamins/:id" => "vitamins#update"
  ###
  post "/users" => "users#create"

  ###
  post "/sessions" => "sessions#create"
end
