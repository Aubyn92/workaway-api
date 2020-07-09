Rails.application.routes.draw do
  resources :hosts
  root to: "hosts#index"
end
