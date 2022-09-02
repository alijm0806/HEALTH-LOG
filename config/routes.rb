Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/vitamins" => "vitamins#index"
  get "/vitamins/:id" => "vitamins#show"
  post "/vitamins" => "vitamins#create"
  patch "/vitamins/:id" => "vitamins#update"
  delete "/vitamins/:id" => "vitamins#destroy"

  ###
  post "/users" => "users#create"

  ###
  post "/sessions" => "sessions#create"

  ###
  get "/list_of_vitamins" => "list_of_vitamins#index"
  post "/list_of_vitamins" => "list_of_vitamins#create"
  patch "/list_of_vitamins/:id" => "list_of_vitamins#update"
  delete "/list_of_vitamins/:id" => "list_of_vitamins#destroy"
end
