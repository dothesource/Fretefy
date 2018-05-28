Rails.application.routes.draw do
  resources :trucks
  resources :users
  resources :accounts

  # devise
  devise_for :users
  root to: "home#index"
end
