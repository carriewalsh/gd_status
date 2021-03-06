Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "welcome#index", as: "welcome"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  get '/logout', to: "sessions#destroy"

  post "/register", to: "users#create"

  get '/dashboard', to: "machines#index"

  resources :beer, only: [:create]

  resources :users, only: [:show, :create, :update]

  resources :machines, only: [:update]
end
