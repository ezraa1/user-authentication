Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'sessions#home'
  # Defines the root path route ("/")
  # root "articles#index"

  # users routes
  resources :users, only: [ :new, :create, :edit, :update, :show, :destroy]

  # sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
