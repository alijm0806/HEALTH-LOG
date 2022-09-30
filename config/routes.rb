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
  get "/lists_of_vitamins" => "lists_of_vitamins#index"
  get "/lists_of_vitamins/:id" => "lists_of_vitamins#show"
  post "/lists_of_vitamins" => "lists_of_vitamins#create"
  patch "/lists_of_vitamins/:id" => "lists_of_vitamins#update"
  delete "/lists_of_vitamins/:id" => "lists_of_vitamins#destroy"

  ###
  get "/appointments" => "appointments#index"
  get "/appointments/:id" => "appointments#show"
  post "/appointments" => "appointments#create"
  patch "/appointments/:id" => "appointments#update"
  delete "/appointments/:id" => "appointments#destroy"

  ###
  get "/doctors" => "doctors#index"
  get "/doctors/:id" => "doctors#show"
  post "/doctors" => "doctors#create"
  patch "/doctors/:id" => "doctors#update"
  delete "/doctors/:id" => "doctors#destroy"
end
