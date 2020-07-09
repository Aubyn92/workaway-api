Rails.application.routes.draw do
  resources :hosts
  post "/login/", to: 'usertoken#create'
  get "/status", to: "status#index"
  get "/status/user", to: "status#user"
  post "/sign-up", to: "users#create"
end
