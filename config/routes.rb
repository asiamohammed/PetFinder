Rails.application.routes.draw do
  
  resources :pets, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :create, :update, :destroy]
  
  post "users/login", to: "sessions#create"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }


end
