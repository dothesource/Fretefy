Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :bids
  resources :jobs
  resources :trucks
  resources :users
  resources :accounts

  # devise
end
